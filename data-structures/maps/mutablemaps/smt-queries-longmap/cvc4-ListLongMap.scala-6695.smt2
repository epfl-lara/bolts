; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84174 () Bool)

(assert start!84174)

(declare-fun b_free!19847 () Bool)

(declare-fun b_next!19847 () Bool)

(assert (=> start!84174 (= b_free!19847 (not b_next!19847))))

(declare-fun tp!69145 () Bool)

(declare-fun b_and!31791 () Bool)

(assert (=> start!84174 (= tp!69145 b_and!31791)))

(declare-fun b!983715 () Bool)

(declare-fun e!554618 () Bool)

(declare-fun tp_is_empty!22949 () Bool)

(assert (=> b!983715 (= e!554618 tp_is_empty!22949)))

(declare-fun b!983716 () Bool)

(declare-fun res!658351 () Bool)

(declare-fun e!554617 () Bool)

(assert (=> b!983716 (=> (not res!658351) (not e!554617))))

(declare-fun from!1932 () (_ BitVec 32))

(declare-datatypes ((array!61869 0))(
  ( (array!61870 (arr!29788 (Array (_ BitVec 32) (_ BitVec 64))) (size!30268 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61869)

(assert (=> b!983716 (= res!658351 (and (bvsge from!1932 #b00000000000000000000000000000000) (bvslt from!1932 (size!30268 _keys!1544))))))

(declare-fun b!983717 () Bool)

(declare-fun res!658350 () Bool)

(assert (=> b!983717 (=> (not res!658350) (not e!554617))))

(declare-datatypes ((List!20757 0))(
  ( (Nil!20754) (Cons!20753 (h!21915 (_ BitVec 64)) (t!29556 List!20757)) )
))
(declare-fun arrayNoDuplicates!0 (array!61869 (_ BitVec 32) List!20757) Bool)

(assert (=> b!983717 (= res!658350 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20754))))

(declare-fun res!658355 () Bool)

(assert (=> start!84174 (=> (not res!658355) (not e!554617))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84174 (= res!658355 (validMask!0 mask!1948))))

(assert (=> start!84174 e!554617))

(assert (=> start!84174 true))

(assert (=> start!84174 tp_is_empty!22949))

(declare-datatypes ((V!35581 0))(
  ( (V!35582 (val!11525 Int)) )
))
(declare-datatypes ((ValueCell!10993 0))(
  ( (ValueCellFull!10993 (v!14087 V!35581)) (EmptyCell!10993) )
))
(declare-datatypes ((array!61871 0))(
  ( (array!61872 (arr!29789 (Array (_ BitVec 32) ValueCell!10993)) (size!30269 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61871)

(declare-fun e!554614 () Bool)

(declare-fun array_inv!22899 (array!61871) Bool)

(assert (=> start!84174 (and (array_inv!22899 _values!1278) e!554614)))

(assert (=> start!84174 tp!69145))

(declare-fun array_inv!22900 (array!61869) Bool)

(assert (=> start!84174 (array_inv!22900 _keys!1544)))

(declare-fun b!983718 () Bool)

(declare-fun res!658354 () Bool)

(assert (=> b!983718 (=> (not res!658354) (not e!554617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61869 (_ BitVec 32)) Bool)

(assert (=> b!983718 (= res!658354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapNonEmpty!36452 () Bool)

(declare-fun mapRes!36452 () Bool)

(declare-fun tp!69146 () Bool)

(assert (=> mapNonEmpty!36452 (= mapRes!36452 (and tp!69146 e!554618))))

(declare-fun mapRest!36452 () (Array (_ BitVec 32) ValueCell!10993))

(declare-fun mapValue!36452 () ValueCell!10993)

(declare-fun mapKey!36452 () (_ BitVec 32))

(assert (=> mapNonEmpty!36452 (= (arr!29789 _values!1278) (store mapRest!36452 mapKey!36452 mapValue!36452))))

(declare-fun b!983719 () Bool)

(declare-fun res!658352 () Bool)

(assert (=> b!983719 (=> (not res!658352) (not e!554617))))

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983719 (= res!658352 (and (= (bvand extraKeys!1199 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeys!1199 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!983720 () Bool)

(assert (=> b!983720 (= e!554617 false)))

(declare-fun minValue!1220 () V!35581)

(declare-fun zeroValue!1220 () V!35581)

(declare-fun defaultEntry!1281 () Int)

(declare-datatypes ((tuple2!14836 0))(
  ( (tuple2!14837 (_1!7428 (_ BitVec 64)) (_2!7428 V!35581)) )
))
(declare-datatypes ((List!20758 0))(
  ( (Nil!20755) (Cons!20754 (h!21916 tuple2!14836) (t!29557 List!20758)) )
))
(declare-datatypes ((ListLongMap!13547 0))(
  ( (ListLongMap!13548 (toList!6789 List!20758)) )
))
(declare-fun lt!436516 () ListLongMap!13547)

(declare-fun getCurrentListMapNoExtraKeys!3448 (array!61869 array!61871 (_ BitVec 32) (_ BitVec 32) V!35581 V!35581 (_ BitVec 32) Int) ListLongMap!13547)

(assert (=> b!983720 (= lt!436516 (getCurrentListMapNoExtraKeys!3448 _keys!1544 _values!1278 mask!1948 extraKeys!1199 zeroValue!1220 minValue!1220 (bvadd #b00000000000000000000000000000001 from!1932) defaultEntry!1281))))

(declare-fun b!983721 () Bool)

(declare-fun e!554615 () Bool)

(assert (=> b!983721 (= e!554615 tp_is_empty!22949)))

(declare-fun b!983722 () Bool)

(declare-fun res!658356 () Bool)

(assert (=> b!983722 (=> (not res!658356) (not e!554617))))

(assert (=> b!983722 (= res!658356 (and (= (size!30269 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30268 _keys!1544) (size!30269 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983723 () Bool)

(declare-fun res!658353 () Bool)

(assert (=> b!983723 (=> (not res!658353) (not e!554617))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!983723 (= res!658353 (validKeyInArray!0 (select (arr!29788 _keys!1544) from!1932)))))

(declare-fun mapIsEmpty!36452 () Bool)

(assert (=> mapIsEmpty!36452 mapRes!36452))

(declare-fun b!983724 () Bool)

(assert (=> b!983724 (= e!554614 (and e!554615 mapRes!36452))))

(declare-fun condMapEmpty!36452 () Bool)

(declare-fun mapDefault!36452 () ValueCell!10993)

