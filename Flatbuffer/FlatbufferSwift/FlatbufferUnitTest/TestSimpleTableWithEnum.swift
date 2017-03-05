// Code generated by flatc command **DO NOT MODIFIED THIS CODE**

import Foundation

public class TestSimpleTableWithEnum: Table {


}

extension TestSimpleTableWithEnum {

	open static func getRootAsTestSimpleTableWithEnum(withData: inout Data) -> TestSimpleTableWithEnum {
		return getRootAsTestSimpleTableWithEnum(withData: &withData, testsimpletablewithenum: TestSimpleTableWithEnum())
	}

	open static func getRootAsTestSimpleTableWithEnum(withData: inout Data, testsimpletablewithenum: TestSimpleTableWithEnum) -> TestSimpleTableWithEnum {
		return testsimpletablewithenum.__assign(at: withData.getOffset(at: 0), withData: &withData) as! TestSimpleTableWithEnum
	}

	var color: Color {
		get {
			let offset = __offset(virtualTableOffset: 4)
			return Color(rawValue: offset != 0 ? (data!.getInteger(at: offset + position) as Int8) : 2)!
		}
		set {
			let offset = __offset(virtualTableOffset: 4)
			if (offset != 0) {
				try? self.data?.putByte(at: offset + position, with: newValue.rawValue)
			}
		}
	}

}

extension TestSimpleTableWithEnum {

	public static func startTestSimpleTableWithEnum(_ builder: Builder) throws {
		try builder.startObject(numberOfFields: 1)
	}

	public static func addColor(_ builder: Builder, color: Int8) throws {
		try builder.putByte(offset: 0, with: color, byDefault: 2)
	}

	public static func endTestSimpleTableWithEnum(_ builder: Builder) throws -> UOffsetT {
		return try builder.endObject()
	}

}

