; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8100 () Bool)

(assert start!8100)

(declare-fun b!50969 () Bool)

(declare-fun b_free!1569 () Bool)

(declare-fun b_next!1569 () Bool)

(assert (=> b!50969 (= b_free!1569 (not b_next!1569))))

(declare-fun tp!6782 () Bool)

(declare-fun b_and!2789 () Bool)

(assert (=> b!50969 (= tp!6782 b_and!2789)))

(declare-fun b!50970 () Bool)

(declare-fun b_free!1571 () Bool)

(declare-fun b_next!1571 () Bool)

(assert (=> b!50970 (= b_free!1571 (not b_next!1571))))

(declare-fun tp!6779 () Bool)

(declare-fun b_and!2791 () Bool)

(assert (=> b!50970 (= tp!6779 b_and!2791)))

(declare-fun b!50956 () Bool)

(declare-fun e!32991 () Bool)

(declare-fun tp_is_empty!2201 () Bool)

(assert (=> b!50956 (= e!32991 tp_is_empty!2201)))

(declare-fun b!50957 () Bool)

(declare-fun e!32984 () Bool)

(assert (=> b!50957 (= e!32984 tp_is_empty!2201)))

(declare-fun b!50958 () Bool)

(declare-fun res!29240 () Bool)

(declare-fun e!32995 () Bool)

(assert (=> b!50958 (=> (not res!29240) (not e!32995))))

(declare-datatypes ((V!2581 0))(
  ( (V!2582 (val!1145 Int)) )
))
(declare-datatypes ((array!3316 0))(
  ( (array!3317 (arr!1584 (Array (_ BitVec 32) (_ BitVec 64))) (size!1809 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!757 0))(
  ( (ValueCellFull!757 (v!2175 V!2581)) (EmptyCell!757) )
))
(declare-datatypes ((array!3318 0))(
  ( (array!3319 (arr!1585 (Array (_ BitVec 32) ValueCell!757)) (size!1810 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!422 0))(
  ( (LongMapFixedSize!423 (defaultEntry!1925 Int) (mask!5722 (_ BitVec 32)) (extraKeys!1816 (_ BitVec 32)) (zeroValue!1843 V!2581) (minValue!1843 V!2581) (_size!260 (_ BitVec 32)) (_keys!3537 array!3316) (_values!1908 array!3318) (_vacant!260 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!244 0))(
  ( (Cell!245 (v!2176 LongMapFixedSize!422)) )
))
(declare-datatypes ((LongMap!244 0))(
  ( (LongMap!245 (underlying!133 Cell!244)) )
))
(declare-fun thiss!992 () LongMap!244)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!50958 (= res!29240 (validMask!0 (mask!5722 (v!2176 (underlying!133 thiss!992)))))))

(declare-fun b!50959 () Bool)

(declare-fun e!32986 () Bool)

(declare-fun e!32993 () Bool)

(assert (=> b!50959 (= e!32986 e!32993)))

(declare-fun b!50960 () Bool)

(declare-fun e!32989 () Bool)

(assert (=> b!50960 (= e!32993 e!32989)))

(declare-fun mapNonEmpty!2245 () Bool)

(declare-fun mapRes!2246 () Bool)

(declare-fun tp!6780 () Bool)

(assert (=> mapNonEmpty!2245 (= mapRes!2246 (and tp!6780 e!32984))))

(declare-fun mapKey!2246 () (_ BitVec 32))

(declare-fun mapValue!2245 () ValueCell!757)

(declare-fun newMap!16 () LongMapFixedSize!422)

(declare-fun mapRest!2246 () (Array (_ BitVec 32) ValueCell!757))

(assert (=> mapNonEmpty!2245 (= (arr!1585 (_values!1908 newMap!16)) (store mapRest!2246 mapKey!2246 mapValue!2245))))

(declare-fun b!50961 () Bool)

(declare-fun e!32992 () Bool)

(assert (=> b!50961 (= e!32992 tp_is_empty!2201)))

(declare-fun b!50962 () Bool)

(declare-fun res!29237 () Bool)

(assert (=> b!50962 (=> (not res!29237) (not e!32995))))

(declare-fun valid!143 (LongMapFixedSize!422) Bool)

(assert (=> b!50962 (= res!29237 (valid!143 newMap!16))))

(declare-fun b!50963 () Bool)

(declare-fun e!32985 () Bool)

(assert (=> b!50963 (= e!32985 tp_is_empty!2201)))

(declare-fun res!29238 () Bool)

(assert (=> start!8100 (=> (not res!29238) (not e!32995))))

(declare-fun valid!144 (LongMap!244) Bool)

(assert (=> start!8100 (= res!29238 (valid!144 thiss!992))))

(assert (=> start!8100 e!32995))

(assert (=> start!8100 e!32986))

(assert (=> start!8100 true))

(declare-fun e!32983 () Bool)

(assert (=> start!8100 e!32983))

(declare-fun mapIsEmpty!2245 () Bool)

(assert (=> mapIsEmpty!2245 mapRes!2246))

(declare-fun mapNonEmpty!2246 () Bool)

(declare-fun mapRes!2245 () Bool)

(declare-fun tp!6781 () Bool)

(assert (=> mapNonEmpty!2246 (= mapRes!2245 (and tp!6781 e!32991))))

(declare-fun mapKey!2245 () (_ BitVec 32))

(declare-fun mapValue!2246 () ValueCell!757)

(declare-fun mapRest!2245 () (Array (_ BitVec 32) ValueCell!757))

(assert (=> mapNonEmpty!2246 (= (arr!1585 (_values!1908 (v!2176 (underlying!133 thiss!992)))) (store mapRest!2245 mapKey!2245 mapValue!2246))))

(declare-fun b!50964 () Bool)

(declare-fun res!29241 () Bool)

(assert (=> b!50964 (=> (not res!29241) (not e!32995))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!50964 (= res!29241 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1809 (_keys!3537 (v!2176 (underlying!133 thiss!992)))))))))

(declare-fun b!50965 () Bool)

(declare-fun e!32987 () Bool)

(assert (=> b!50965 (= e!32987 (and e!32985 mapRes!2245))))

(declare-fun condMapEmpty!2245 () Bool)

(declare-fun mapDefault!2245 () ValueCell!757)

