; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82374 () Bool)

(assert start!82374)

(declare-fun b_free!18613 () Bool)

(declare-fun b_next!18613 () Bool)

(assert (=> start!82374 (= b_free!18613 (not b_next!18613))))

(declare-fun tp!64809 () Bool)

(declare-fun b_and!30119 () Bool)

(assert (=> start!82374 (= tp!64809 b_and!30119)))

(declare-fun b!959948 () Bool)

(declare-fun e!541162 () Bool)

(declare-fun tp_is_empty!21325 () Bool)

(assert (=> b!959948 (= e!541162 tp_is_empty!21325)))

(declare-fun b!959949 () Bool)

(declare-fun res!642687 () Bool)

(declare-fun e!541160 () Bool)

(assert (=> b!959949 (=> (not res!642687) (not e!541160))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58757 0))(
  ( (array!58758 (arr!28248 (Array (_ BitVec 32) (_ BitVec 64))) (size!28728 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58757)

(declare-datatypes ((V!33417 0))(
  ( (V!33418 (val!10713 Int)) )
))
(declare-datatypes ((ValueCell!10181 0))(
  ( (ValueCellFull!10181 (v!13270 V!33417)) (EmptyCell!10181) )
))
(declare-datatypes ((array!58759 0))(
  ( (array!58760 (arr!28249 (Array (_ BitVec 32) ValueCell!10181)) (size!28729 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58759)

(assert (=> b!959949 (= res!642687 (and (= (size!28729 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28728 _keys!1668) (size!28729 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959950 () Bool)

(declare-fun res!642689 () Bool)

(assert (=> b!959950 (=> (not res!642689) (not e!541160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58757 (_ BitVec 32)) Bool)

(assert (=> b!959950 (= res!642689 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun mapNonEmpty!33967 () Bool)

(declare-fun mapRes!33967 () Bool)

(declare-fun tp!64810 () Bool)

(declare-fun e!541163 () Bool)

(assert (=> mapNonEmpty!33967 (= mapRes!33967 (and tp!64810 e!541163))))

(declare-fun mapKey!33967 () (_ BitVec 32))

(declare-fun mapRest!33967 () (Array (_ BitVec 32) ValueCell!10181))

(declare-fun mapValue!33967 () ValueCell!10181)

(assert (=> mapNonEmpty!33967 (= (arr!28249 _values!1386) (store mapRest!33967 mapKey!33967 mapValue!33967))))

(declare-fun res!642685 () Bool)

(assert (=> start!82374 (=> (not res!642685) (not e!541160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82374 (= res!642685 (validMask!0 mask!2088))))

(assert (=> start!82374 e!541160))

(assert (=> start!82374 true))

(assert (=> start!82374 tp_is_empty!21325))

(declare-fun array_inv!21837 (array!58757) Bool)

(assert (=> start!82374 (array_inv!21837 _keys!1668)))

(declare-fun e!541159 () Bool)

(declare-fun array_inv!21838 (array!58759) Bool)

(assert (=> start!82374 (and (array_inv!21838 _values!1386) e!541159)))

(assert (=> start!82374 tp!64809))

(declare-fun b!959951 () Bool)

(declare-fun res!642690 () Bool)

(assert (=> b!959951 (=> (not res!642690) (not e!541160))))

(declare-fun i!793 () (_ BitVec 32))

(declare-fun from!2064 () (_ BitVec 32))

(assert (=> b!959951 (= res!642690 (and (bvsge from!2064 #b00000000000000000000000000000000) (bvslt from!2064 (size!28728 _keys!1668)) (bvsge i!793 from!2064) (bvslt i!793 (size!28728 _keys!1668))))))

(declare-fun mapIsEmpty!33967 () Bool)

(assert (=> mapIsEmpty!33967 mapRes!33967))

(declare-fun b!959952 () Bool)

(declare-fun res!642688 () Bool)

(assert (=> b!959952 (=> (not res!642688) (not e!541160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!959952 (= res!642688 (validKeyInArray!0 (select (arr!28248 _keys!1668) i!793)))))

(declare-fun b!959953 () Bool)

(assert (=> b!959953 (= e!541160 false)))

(declare-fun minValue!1328 () V!33417)

(declare-fun lt!430556 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33417)

(declare-datatypes ((tuple2!13904 0))(
  ( (tuple2!13905 (_1!6962 (_ BitVec 64)) (_2!6962 V!33417)) )
))
(declare-datatypes ((List!19768 0))(
  ( (Nil!19765) (Cons!19764 (h!20926 tuple2!13904) (t!28139 List!19768)) )
))
(declare-datatypes ((ListLongMap!12615 0))(
  ( (ListLongMap!12616 (toList!6323 List!19768)) )
))
(declare-fun contains!5373 (ListLongMap!12615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3508 (array!58757 array!58759 (_ BitVec 32) (_ BitVec 32) V!33417 V!33417 (_ BitVec 32) Int) ListLongMap!12615)

(assert (=> b!959953 (= lt!430556 (contains!5373 (getCurrentListMap!3508 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28248 _keys!1668) i!793)))))

(declare-fun b!959954 () Bool)

(assert (=> b!959954 (= e!541159 (and e!541162 mapRes!33967))))

(declare-fun condMapEmpty!33967 () Bool)

(declare-fun mapDefault!33967 () ValueCell!10181)

