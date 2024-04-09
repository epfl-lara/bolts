; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81886 () Bool)

(assert start!81886)

(declare-fun b_free!18353 () Bool)

(declare-fun b_next!18353 () Bool)

(assert (=> start!81886 (= b_free!18353 (not b_next!18353))))

(declare-fun tp!63760 () Bool)

(declare-fun b_and!29857 () Bool)

(assert (=> start!81886 (= tp!63760 b_and!29857)))

(declare-fun b!954493 () Bool)

(declare-fun res!639285 () Bool)

(declare-fun e!537782 () Bool)

(assert (=> b!954493 (=> (not res!639285) (not e!537782))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((array!57919 0))(
  ( (array!57920 (arr!27835 (Array (_ BitVec 32) (_ BitVec 64))) (size!28315 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57919)

(declare-datatypes ((V!32845 0))(
  ( (V!32846 (val!10499 Int)) )
))
(declare-datatypes ((ValueCell!9967 0))(
  ( (ValueCellFull!9967 (v!13054 V!32845)) (EmptyCell!9967) )
))
(declare-datatypes ((array!57921 0))(
  ( (array!57922 (arr!27836 (Array (_ BitVec 32) ValueCell!9967)) (size!28316 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57921)

(declare-fun mask!1823 () (_ BitVec 32))

(assert (=> b!954493 (= res!639285 (and (= (size!28316 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28315 _keys!1441) (size!28316 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!33307 () Bool)

(declare-fun mapRes!33307 () Bool)

(assert (=> mapIsEmpty!33307 mapRes!33307))

(declare-fun res!639288 () Bool)

(assert (=> start!81886 (=> (not res!639288) (not e!537782))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81886 (= res!639288 (validMask!0 mask!1823))))

(assert (=> start!81886 e!537782))

(assert (=> start!81886 true))

(declare-fun tp_is_empty!20897 () Bool)

(assert (=> start!81886 tp_is_empty!20897))

(declare-fun array_inv!21553 (array!57919) Bool)

(assert (=> start!81886 (array_inv!21553 _keys!1441)))

(declare-fun e!537783 () Bool)

(declare-fun array_inv!21554 (array!57921) Bool)

(assert (=> start!81886 (and (array_inv!21554 _values!1197) e!537783)))

(assert (=> start!81886 tp!63760))

(declare-fun b!954494 () Bool)

(declare-fun res!639287 () Bool)

(assert (=> b!954494 (=> (not res!639287) (not e!537782))))

(declare-fun i!735 () (_ BitVec 32))

(assert (=> b!954494 (= res!639287 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28315 _keys!1441))))))

(declare-fun b!954495 () Bool)

(assert (=> b!954495 (= e!537782 false)))

(declare-fun lt!429868 () Bool)

(declare-fun zeroValue!1139 () V!32845)

(declare-fun minValue!1139 () V!32845)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13724 0))(
  ( (tuple2!13725 (_1!6872 (_ BitVec 64)) (_2!6872 V!32845)) )
))
(declare-datatypes ((List!19541 0))(
  ( (Nil!19538) (Cons!19537 (h!20699 tuple2!13724) (t!27910 List!19541)) )
))
(declare-datatypes ((ListLongMap!12435 0))(
  ( (ListLongMap!12436 (toList!6233 List!19541)) )
))
(declare-fun contains!5283 (ListLongMap!12435 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3418 (array!57919 array!57921 (_ BitVec 32) (_ BitVec 32) V!32845 V!32845 (_ BitVec 32) Int) ListLongMap!12435)

(assert (=> b!954495 (= lt!429868 (contains!5283 (getCurrentListMap!3418 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27835 _keys!1441) i!735)))))

(declare-fun b!954496 () Bool)

(declare-fun res!639286 () Bool)

(assert (=> b!954496 (=> (not res!639286) (not e!537782))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!954496 (= res!639286 (validKeyInArray!0 (select (arr!27835 _keys!1441) i!735)))))

(declare-fun b!954497 () Bool)

(declare-fun e!537786 () Bool)

(assert (=> b!954497 (= e!537786 tp_is_empty!20897)))

(declare-fun mapNonEmpty!33307 () Bool)

(declare-fun tp!63759 () Bool)

(declare-fun e!537784 () Bool)

(assert (=> mapNonEmpty!33307 (= mapRes!33307 (and tp!63759 e!537784))))

(declare-fun mapRest!33307 () (Array (_ BitVec 32) ValueCell!9967))

(declare-fun mapKey!33307 () (_ BitVec 32))

(declare-fun mapValue!33307 () ValueCell!9967)

(assert (=> mapNonEmpty!33307 (= (arr!27836 _values!1197) (store mapRest!33307 mapKey!33307 mapValue!33307))))

(declare-fun b!954498 () Bool)

(assert (=> b!954498 (= e!537783 (and e!537786 mapRes!33307))))

(declare-fun condMapEmpty!33307 () Bool)

(declare-fun mapDefault!33307 () ValueCell!9967)

