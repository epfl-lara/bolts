; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9228 () Bool)

(assert start!9228)

(declare-fun b!65738 () Bool)

(declare-fun b_free!2049 () Bool)

(declare-fun b_next!2049 () Bool)

(assert (=> b!65738 (= b_free!2049 (not b_next!2049))))

(declare-fun tp!8296 () Bool)

(declare-fun b_and!4041 () Bool)

(assert (=> b!65738 (= tp!8296 b_and!4041)))

(declare-fun b!65727 () Bool)

(declare-fun b_free!2051 () Bool)

(declare-fun b_next!2051 () Bool)

(assert (=> b!65727 (= b_free!2051 (not b_next!2051))))

(declare-fun tp!8297 () Bool)

(declare-fun b_and!4043 () Bool)

(assert (=> b!65727 (= tp!8297 b_and!4043)))

(declare-fun b!65726 () Bool)

(declare-fun res!35682 () Bool)

(declare-fun e!43096 () Bool)

(assert (=> b!65726 (=> (not res!35682) (not e!43096))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2901 0))(
  ( (V!2902 (val!1265 Int)) )
))
(declare-datatypes ((array!3818 0))(
  ( (array!3819 (arr!1824 (Array (_ BitVec 32) (_ BitVec 64))) (size!2059 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!877 0))(
  ( (ValueCellFull!877 (v!2466 V!2901)) (EmptyCell!877) )
))
(declare-datatypes ((array!3820 0))(
  ( (array!3821 (arr!1825 (Array (_ BitVec 32) ValueCell!877)) (size!2060 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!662 0))(
  ( (LongMapFixedSize!663 (defaultEntry!2139 Int) (mask!6069 (_ BitVec 32)) (extraKeys!2010 (_ BitVec 32)) (zeroValue!2047 V!2901) (minValue!2047 V!2901) (_size!380 (_ BitVec 32)) (_keys!3779 array!3818) (_values!2122 array!3820) (_vacant!380 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!472 0))(
  ( (Cell!473 (v!2467 LongMapFixedSize!662)) )
))
(declare-datatypes ((LongMap!472 0))(
  ( (LongMap!473 (underlying!247 Cell!472)) )
))
(declare-fun thiss!992 () LongMap!472)

(assert (=> b!65726 (= res!35682 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2059 (_keys!3779 (v!2467 (underlying!247 thiss!992)))))))))

(declare-fun e!43094 () Bool)

(declare-fun tp_is_empty!2441 () Bool)

(declare-fun e!43093 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!662)

(declare-fun array_inv!1081 (array!3818) Bool)

(declare-fun array_inv!1082 (array!3820) Bool)

(assert (=> b!65727 (= e!43094 (and tp!8297 tp_is_empty!2441 (array_inv!1081 (_keys!3779 newMap!16)) (array_inv!1082 (_values!2122 newMap!16)) e!43093))))

(declare-fun mapIsEmpty!3041 () Bool)

(declare-fun mapRes!3042 () Bool)

(assert (=> mapIsEmpty!3041 mapRes!3042))

(declare-fun b!65728 () Bool)

(declare-fun e!43100 () Bool)

(assert (=> b!65728 (= e!43100 tp_is_empty!2441)))

(declare-fun b!65729 () Bool)

(declare-fun e!43092 () Bool)

(declare-fun e!43104 () Bool)

(declare-fun mapRes!3041 () Bool)

(assert (=> b!65729 (= e!43092 (and e!43104 mapRes!3041))))

(declare-fun condMapEmpty!3041 () Bool)

(declare-fun mapDefault!3041 () ValueCell!877)

