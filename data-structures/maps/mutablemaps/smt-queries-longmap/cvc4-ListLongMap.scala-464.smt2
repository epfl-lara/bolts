; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8584 () Bool)

(assert start!8584)

(declare-fun b!58889 () Bool)

(declare-fun b_free!1965 () Bool)

(declare-fun b_next!1965 () Bool)

(assert (=> b!58889 (= b_free!1965 (not b_next!1965))))

(declare-fun tp!8008 () Bool)

(declare-fun b_and!3569 () Bool)

(assert (=> b!58889 (= tp!8008 b_and!3569)))

(declare-fun b!58886 () Bool)

(declare-fun b_free!1967 () Bool)

(declare-fun b_next!1967 () Bool)

(assert (=> b!58886 (= b_free!1967 (not b_next!1967))))

(declare-fun tp!8010 () Bool)

(declare-fun b_and!3571 () Bool)

(assert (=> b!58886 (= tp!8010 b_and!3571)))

(declare-fun res!32749 () Bool)

(declare-fun e!38776 () Bool)

(assert (=> start!8584 (=> (not res!32749) (not e!38776))))

(declare-datatypes ((V!2845 0))(
  ( (V!2846 (val!1244 Int)) )
))
(declare-datatypes ((array!3724 0))(
  ( (array!3725 (arr!1782 (Array (_ BitVec 32) (_ BitVec 64))) (size!2012 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!856 0))(
  ( (ValueCellFull!856 (v!2382 V!2845)) (EmptyCell!856) )
))
(declare-datatypes ((array!3726 0))(
  ( (array!3727 (arr!1783 (Array (_ BitVec 32) ValueCell!856)) (size!2013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!620 0))(
  ( (LongMapFixedSize!621 (defaultEntry!2044 Int) (mask!5928 (_ BitVec 32)) (extraKeys!1931 (_ BitVec 32)) (zeroValue!1960 V!2845) (minValue!1960 V!2845) (_size!359 (_ BitVec 32)) (_keys!3668 array!3724) (_values!2027 array!3726) (_vacant!359 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!430 0))(
  ( (Cell!431 (v!2383 LongMapFixedSize!620)) )
))
(declare-datatypes ((LongMap!430 0))(
  ( (LongMap!431 (underlying!226 Cell!430)) )
))
(declare-fun thiss!992 () LongMap!430)

(declare-fun valid!251 (LongMap!430) Bool)

(assert (=> start!8584 (= res!32749 (valid!251 thiss!992))))

(assert (=> start!8584 e!38776))

(declare-fun e!38772 () Bool)

(assert (=> start!8584 e!38772))

(assert (=> start!8584 true))

(declare-fun e!38774 () Bool)

(assert (=> start!8584 e!38774))

(declare-fun mapNonEmpty!2879 () Bool)

(declare-fun mapRes!2880 () Bool)

(declare-fun tp!8009 () Bool)

(declare-fun e!38764 () Bool)

(assert (=> mapNonEmpty!2879 (= mapRes!2880 (and tp!8009 e!38764))))

(declare-fun mapKey!2880 () (_ BitVec 32))

(declare-fun mapRest!2879 () (Array (_ BitVec 32) ValueCell!856))

(declare-fun newMap!16 () LongMapFixedSize!620)

(declare-fun mapValue!2879 () ValueCell!856)

(assert (=> mapNonEmpty!2879 (= (arr!1783 (_values!2027 newMap!16)) (store mapRest!2879 mapKey!2880 mapValue!2879))))

(declare-fun b!58877 () Bool)

(declare-fun e!38763 () Bool)

(declare-fun tp_is_empty!2399 () Bool)

(assert (=> b!58877 (= e!38763 tp_is_empty!2399)))

(declare-fun mapIsEmpty!2879 () Bool)

(declare-fun mapRes!2879 () Bool)

(assert (=> mapIsEmpty!2879 mapRes!2879))

(declare-fun b!58878 () Bool)

(declare-datatypes ((Unit!1557 0))(
  ( (Unit!1558) )
))
(declare-fun e!38770 () Unit!1557)

(declare-fun Unit!1559 () Unit!1557)

(assert (=> b!58878 (= e!38770 Unit!1559)))

(declare-fun b!58879 () Bool)

(declare-fun e!38775 () Bool)

(declare-fun e!38769 () Bool)

(assert (=> b!58879 (= e!38775 e!38769)))

(declare-fun b!58880 () Bool)

(assert (=> b!58880 (= e!38772 e!38775)))

(declare-fun b!58881 () Bool)

(declare-fun res!32747 () Bool)

(assert (=> b!58881 (=> (not res!32747) (not e!38776))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!58881 (= res!32747 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2012 (_keys!3668 (v!2383 (underlying!226 thiss!992)))))))))

(declare-fun b!58882 () Bool)

(declare-fun e!38766 () Bool)

(assert (=> b!58882 (= e!38766 (and (= (size!2013 (_values!2027 (v!2383 (underlying!226 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!5928 (v!2383 (underlying!226 thiss!992))))) (not (= (size!2012 (_keys!3668 (v!2383 (underlying!226 thiss!992)))) (size!2013 (_values!2027 (v!2383 (underlying!226 thiss!992))))))))))

(declare-fun b!58883 () Bool)

(declare-fun res!32748 () Bool)

(assert (=> b!58883 (=> (not res!32748) (not e!38776))))

(declare-fun valid!252 (LongMapFixedSize!620) Bool)

(assert (=> b!58883 (= res!32748 (valid!252 newMap!16))))

(declare-fun b!58884 () Bool)

(declare-fun res!32751 () Bool)

(assert (=> b!58884 (=> (not res!32751) (not e!38776))))

(assert (=> b!58884 (= res!32751 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5928 newMap!16)) (_size!359 (v!2383 (underlying!226 thiss!992)))))))

(declare-fun b!58885 () Bool)

(declare-fun e!38771 () Bool)

(assert (=> b!58885 (= e!38771 (and e!38763 mapRes!2879))))

(declare-fun condMapEmpty!2879 () Bool)

(declare-fun mapDefault!2880 () ValueCell!856)

