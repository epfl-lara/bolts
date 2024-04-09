; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41144 () Bool)

(assert start!41144)

(declare-fun b_free!11005 () Bool)

(declare-fun b_next!11005 () Bool)

(assert (=> start!41144 (= b_free!11005 (not b_next!11005))))

(declare-fun tp!38851 () Bool)

(declare-fun b_and!19267 () Bool)

(assert (=> start!41144 (= tp!38851 b_and!19267)))

(declare-fun b!458793 () Bool)

(declare-datatypes ((Unit!13269 0))(
  ( (Unit!13270) )
))
(declare-fun e!267844 () Unit!13269)

(declare-fun Unit!13271 () Unit!13269)

(assert (=> b!458793 (= e!267844 Unit!13271)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!207595 () Unit!13269)

(declare-datatypes ((array!28453 0))(
  ( (array!28454 (arr!13664 (Array (_ BitVec 32) (_ BitVec 64))) (size!14016 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28453)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13269)

(assert (=> b!458793 (= lt!207595 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!458793 false))

(declare-fun b!458795 () Bool)

(declare-fun res!274208 () Bool)

(declare-fun e!267841 () Bool)

(assert (=> b!458795 (=> (not res!274208) (not e!267841))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!17563 0))(
  ( (V!17564 (val!6216 Int)) )
))
(declare-datatypes ((ValueCell!5828 0))(
  ( (ValueCellFull!5828 (v!8490 V!17563)) (EmptyCell!5828) )
))
(declare-datatypes ((array!28455 0))(
  ( (array!28456 (arr!13665 (Array (_ BitVec 32) ValueCell!5828)) (size!14017 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28455)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!458795 (= res!274208 (and (= (size!14017 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14016 _keys!709) (size!14017 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!458796 () Bool)

(declare-fun e!267836 () Bool)

(assert (=> b!458796 (= e!267836 (bvslt from!863 (size!14016 _keys!709)))))

(declare-fun lt!207594 () Unit!13269)

(assert (=> b!458796 (= lt!207594 e!267844)))

(declare-fun c!56381 () Bool)

(assert (=> b!458796 (= c!56381 (= (select (arr!13664 _keys!709) from!863) k!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((tuple2!8156 0))(
  ( (tuple2!8157 (_1!4088 (_ BitVec 64)) (_2!4088 V!17563)) )
))
(declare-datatypes ((List!8260 0))(
  ( (Nil!8257) (Cons!8256 (h!9112 tuple2!8156) (t!14152 List!8260)) )
))
(declare-datatypes ((ListLongMap!7083 0))(
  ( (ListLongMap!7084 (toList!3557 List!8260)) )
))
(declare-fun lt!207601 () ListLongMap!7083)

(declare-fun lt!207596 () ListLongMap!7083)

(declare-fun +!1577 (ListLongMap!7083 tuple2!8156) ListLongMap!7083)

(declare-fun get!6749 (ValueCell!5828 V!17563) V!17563)

(declare-fun dynLambda!887 (Int (_ BitVec 64)) V!17563)

(assert (=> b!458796 (= lt!207596 (+!1577 lt!207601 (tuple2!8157 (select (arr!13664 _keys!709) from!863) (get!6749 (select (arr!13665 _values!549) from!863) (dynLambda!887 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!458797 () Bool)

(declare-fun res!274210 () Bool)

(assert (=> b!458797 (=> (not res!274210) (not e!267841))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!458797 (= res!274210 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!14016 _keys!709))))))

(declare-fun mapNonEmpty!20164 () Bool)

(declare-fun mapRes!20164 () Bool)

(declare-fun tp!38850 () Bool)

(declare-fun e!267839 () Bool)

(assert (=> mapNonEmpty!20164 (= mapRes!20164 (and tp!38850 e!267839))))

(declare-fun mapKey!20164 () (_ BitVec 32))

(declare-fun mapValue!20164 () ValueCell!5828)

(declare-fun mapRest!20164 () (Array (_ BitVec 32) ValueCell!5828))

(assert (=> mapNonEmpty!20164 (= (arr!13665 _values!549) (store mapRest!20164 mapKey!20164 mapValue!20164))))

(declare-fun b!458798 () Bool)

(declare-fun res!274207 () Bool)

(declare-fun e!267840 () Bool)

(assert (=> b!458798 (=> (not res!274207) (not e!267840))))

(assert (=> b!458798 (= res!274207 (bvsle from!863 i!563))))

(declare-fun b!458799 () Bool)

(declare-fun res!274213 () Bool)

(assert (=> b!458799 (=> (not res!274213) (not e!267841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!458799 (= res!274213 (validKeyInArray!0 k!794))))

(declare-fun b!458800 () Bool)

(declare-fun Unit!13272 () Unit!13269)

(assert (=> b!458800 (= e!267844 Unit!13272)))

(declare-fun b!458801 () Bool)

(declare-fun res!274205 () Bool)

(assert (=> b!458801 (=> (not res!274205) (not e!267841))))

(declare-fun arrayContainsKey!0 (array!28453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!458801 (= res!274205 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!458802 () Bool)

(declare-fun res!274211 () Bool)

(assert (=> b!458802 (=> (not res!274211) (not e!267840))))

(declare-fun lt!207600 () array!28453)

(declare-datatypes ((List!8261 0))(
  ( (Nil!8258) (Cons!8257 (h!9113 (_ BitVec 64)) (t!14153 List!8261)) )
))
(declare-fun arrayNoDuplicates!0 (array!28453 (_ BitVec 32) List!8261) Bool)

(assert (=> b!458802 (= res!274211 (arrayNoDuplicates!0 lt!207600 #b00000000000000000000000000000000 Nil!8258))))

(declare-fun b!458803 () Bool)

(declare-fun tp_is_empty!12343 () Bool)

(assert (=> b!458803 (= e!267839 tp_is_empty!12343)))

(declare-fun b!458804 () Bool)

(declare-fun res!274212 () Bool)

(assert (=> b!458804 (=> (not res!274212) (not e!267841))))

(assert (=> b!458804 (= res!274212 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8258))))

(declare-fun res!274204 () Bool)

(assert (=> start!41144 (=> (not res!274204) (not e!267841))))

(assert (=> start!41144 (= res!274204 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14016 _keys!709))))))

(assert (=> start!41144 e!267841))

(assert (=> start!41144 tp_is_empty!12343))

(assert (=> start!41144 tp!38851))

(assert (=> start!41144 true))

(declare-fun e!267843 () Bool)

(declare-fun array_inv!9884 (array!28455) Bool)

(assert (=> start!41144 (and (array_inv!9884 _values!549) e!267843)))

(declare-fun array_inv!9885 (array!28453) Bool)

(assert (=> start!41144 (array_inv!9885 _keys!709)))

(declare-fun b!458794 () Bool)

(declare-fun res!274201 () Bool)

(assert (=> b!458794 (=> (not res!274201) (not e!267841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!458794 (= res!274201 (validMask!0 mask!1025))))

(declare-fun b!458805 () Bool)

(declare-fun res!274206 () Bool)

(assert (=> b!458805 (=> (not res!274206) (not e!267841))))

(assert (=> b!458805 (= res!274206 (or (= (select (arr!13664 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13664 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!458806 () Bool)

(assert (=> b!458806 (= e!267841 e!267840)))

(declare-fun res!274200 () Bool)

(assert (=> b!458806 (=> (not res!274200) (not e!267840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28453 (_ BitVec 32)) Bool)

(assert (=> b!458806 (= res!274200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!207600 mask!1025))))

(assert (=> b!458806 (= lt!207600 (array!28454 (store (arr!13664 _keys!709) i!563 k!794) (size!14016 _keys!709)))))

(declare-fun b!458807 () Bool)

(declare-fun res!274209 () Bool)

(assert (=> b!458807 (=> (not res!274209) (not e!267841))))

(assert (=> b!458807 (= res!274209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!458808 () Bool)

(declare-fun e!267837 () Bool)

(assert (=> b!458808 (= e!267840 e!267837)))

(declare-fun res!274202 () Bool)

(assert (=> b!458808 (=> (not res!274202) (not e!267837))))

(assert (=> b!458808 (= res!274202 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!207602 () array!28455)

(declare-fun minValue!515 () V!17563)

(declare-fun zeroValue!515 () V!17563)

(declare-fun getCurrentListMapNoExtraKeys!1729 (array!28453 array!28455 (_ BitVec 32) (_ BitVec 32) V!17563 V!17563 (_ BitVec 32) Int) ListLongMap!7083)

(assert (=> b!458808 (= lt!207596 (getCurrentListMapNoExtraKeys!1729 lt!207600 lt!207602 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!17563)

(assert (=> b!458808 (= lt!207602 (array!28456 (store (arr!13665 _values!549) i!563 (ValueCellFull!5828 v!412)) (size!14017 _values!549)))))

(declare-fun lt!207599 () ListLongMap!7083)

(assert (=> b!458808 (= lt!207599 (getCurrentListMapNoExtraKeys!1729 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!458809 () Bool)

(declare-fun e!267838 () Bool)

(assert (=> b!458809 (= e!267838 tp_is_empty!12343)))

(declare-fun b!458810 () Bool)

(assert (=> b!458810 (= e!267843 (and e!267838 mapRes!20164))))

(declare-fun condMapEmpty!20164 () Bool)

(declare-fun mapDefault!20164 () ValueCell!5828)

