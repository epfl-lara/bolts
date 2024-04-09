; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10200 () Bool)

(assert start!10200)

(declare-fun b!77903 () Bool)

(declare-fun b_free!2193 () Bool)

(declare-fun b_next!2193 () Bool)

(assert (=> b!77903 (= b_free!2193 (not b_next!2193))))

(declare-fun tp!8781 () Bool)

(declare-fun b_and!4793 () Bool)

(assert (=> b!77903 (= tp!8781 b_and!4793)))

(declare-fun b!77920 () Bool)

(declare-fun b_free!2195 () Bool)

(declare-fun b_next!2195 () Bool)

(assert (=> b!77920 (= b_free!2195 (not b_next!2195))))

(declare-fun tp!8780 () Bool)

(declare-fun b_and!4795 () Bool)

(assert (=> b!77920 (= tp!8780 b_and!4795)))

(declare-fun b!77901 () Bool)

(declare-fun res!40828 () Bool)

(declare-fun e!50981 () Bool)

(assert (=> b!77901 (=> (not res!40828) (not e!50981))))

(declare-datatypes ((V!2997 0))(
  ( (V!2998 (val!1301 Int)) )
))
(declare-datatypes ((array!3978 0))(
  ( (array!3979 (arr!1896 (Array (_ BitVec 32) (_ BitVec 64))) (size!2137 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!913 0))(
  ( (ValueCellFull!913 (v!2595 V!2997)) (EmptyCell!913) )
))
(declare-datatypes ((array!3980 0))(
  ( (array!3981 (arr!1897 (Array (_ BitVec 32) ValueCell!913)) (size!2138 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!734 0))(
  ( (LongMapFixedSize!735 (defaultEntry!2273 Int) (mask!6269 (_ BitVec 32)) (extraKeys!2124 (_ BitVec 32)) (zeroValue!2171 V!2997) (minValue!2171 V!2997) (_size!416 (_ BitVec 32)) (_keys!3933 array!3978) (_values!2256 array!3980) (_vacant!416 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!734)

(declare-datatypes ((Cell!542 0))(
  ( (Cell!543 (v!2596 LongMapFixedSize!734)) )
))
(declare-datatypes ((LongMap!542 0))(
  ( (LongMap!543 (underlying!282 Cell!542)) )
))
(declare-fun thiss!992 () LongMap!542)

(assert (=> b!77901 (= res!40828 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6269 newMap!16)) (_size!416 (v!2596 (underlying!282 thiss!992)))))))

(declare-fun b!77902 () Bool)

(declare-fun e!50965 () Bool)

(declare-fun e!50966 () Bool)

(assert (=> b!77902 (= e!50965 e!50966)))

(declare-fun res!40830 () Bool)

(assert (=> b!77902 (=> (not res!40830) (not e!50966))))

(declare-datatypes ((tuple2!2192 0))(
  ( (tuple2!2193 (_1!1106 Bool) (_2!1106 LongMapFixedSize!734)) )
))
(declare-fun lt!35831 () tuple2!2192)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!77902 (= res!40830 (and (_1!1106 lt!35831) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2267 0))(
  ( (Unit!2268) )
))
(declare-fun lt!35829 () Unit!2267)

(declare-fun e!50967 () Unit!2267)

(assert (=> b!77902 (= lt!35829 e!50967)))

(declare-datatypes ((tuple2!2194 0))(
  ( (tuple2!2195 (_1!1107 (_ BitVec 64)) (_2!1107 V!2997)) )
))
(declare-datatypes ((List!1535 0))(
  ( (Nil!1532) (Cons!1531 (h!2119 tuple2!2194) (t!5189 List!1535)) )
))
(declare-datatypes ((ListLongMap!1467 0))(
  ( (ListLongMap!1468 (toList!749 List!1535)) )
))
(declare-fun lt!35839 () ListLongMap!1467)

(declare-fun c!11902 () Bool)

(declare-fun contains!746 (ListLongMap!1467 (_ BitVec 64)) Bool)

(assert (=> b!77902 (= c!11902 (contains!746 lt!35839 (select (arr!1896 (_keys!3933 (v!2596 (underlying!282 thiss!992)))) from!355)))))

(declare-fun lt!35842 () V!2997)

(declare-fun update!112 (LongMapFixedSize!734 (_ BitVec 64) V!2997) tuple2!2192)

(assert (=> b!77902 (= lt!35831 (update!112 newMap!16 (select (arr!1896 (_keys!3933 (v!2596 (underlying!282 thiss!992)))) from!355) lt!35842))))

(declare-fun e!50968 () Bool)

(declare-fun e!50980 () Bool)

(declare-fun tp_is_empty!2513 () Bool)

(declare-fun array_inv!1131 (array!3978) Bool)

(declare-fun array_inv!1132 (array!3980) Bool)

(assert (=> b!77903 (= e!50980 (and tp!8781 tp_is_empty!2513 (array_inv!1131 (_keys!3933 (v!2596 (underlying!282 thiss!992)))) (array_inv!1132 (_values!2256 (v!2596 (underlying!282 thiss!992)))) e!50968))))

(declare-fun b!77904 () Bool)

(declare-fun e!50977 () Bool)

(declare-fun mapRes!3309 () Bool)

(assert (=> b!77904 (= e!50968 (and e!50977 mapRes!3309))))

(declare-fun condMapEmpty!3310 () Bool)

(declare-fun mapDefault!3310 () ValueCell!913)

