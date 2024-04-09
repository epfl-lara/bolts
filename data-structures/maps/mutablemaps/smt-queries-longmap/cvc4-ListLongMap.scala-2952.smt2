; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41944 () Bool)

(assert start!41944)

(declare-fun b_free!11525 () Bool)

(declare-fun b_next!11525 () Bool)

(assert (=> start!41944 (= b_free!11525 (not b_next!11525))))

(declare-fun tp!40588 () Bool)

(declare-fun b_and!19931 () Bool)

(assert (=> start!41944 (= tp!40588 b_and!19931)))

(declare-fun b!468011 () Bool)

(declare-fun e!273890 () Bool)

(declare-fun e!273886 () Bool)

(assert (=> b!468011 (= e!273890 (not e!273886))))

(declare-fun res!279781 () Bool)

(assert (=> b!468011 (=> res!279781 e!273886)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468011 (= res!279781 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18375 0))(
  ( (V!18376 (val!6521 Int)) )
))
(declare-datatypes ((tuple2!8546 0))(
  ( (tuple2!8547 (_1!4283 (_ BitVec 64)) (_2!4283 V!18375)) )
))
(declare-datatypes ((List!8666 0))(
  ( (Nil!8663) (Cons!8662 (h!9518 tuple2!8546) (t!14630 List!8666)) )
))
(declare-datatypes ((ListLongMap!7473 0))(
  ( (ListLongMap!7474 (toList!3752 List!8666)) )
))
(declare-fun lt!211681 () ListLongMap!7473)

(declare-fun lt!211679 () ListLongMap!7473)

(assert (=> b!468011 (= lt!211681 lt!211679)))

(declare-fun zeroValue!794 () V!18375)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18375)

(declare-datatypes ((Unit!13625 0))(
  ( (Unit!13626) )
))
(declare-fun lt!211680 () Unit!13625)

(declare-datatypes ((array!29637 0))(
  ( (array!29638 (arr!14242 (Array (_ BitVec 32) (_ BitVec 64))) (size!14594 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29637)

(declare-datatypes ((ValueCell!6133 0))(
  ( (ValueCellFull!6133 (v!8806 V!18375)) (EmptyCell!6133) )
))
(declare-datatypes ((array!29639 0))(
  ( (array!29640 (arr!14243 (Array (_ BitVec 32) ValueCell!6133)) (size!14595 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29639)

(declare-fun minValueAfter!38 () V!18375)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!113 (array!29637 array!29639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18375 V!18375 V!18375 V!18375 (_ BitVec 32) Int) Unit!13625)

(assert (=> b!468011 (= lt!211680 (lemmaNoChangeToArrayThenSameMapNoExtras!113 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1918 (array!29637 array!29639 (_ BitVec 32) (_ BitVec 32) V!18375 V!18375 (_ BitVec 32) Int) ListLongMap!7473)

(assert (=> b!468011 (= lt!211679 (getCurrentListMapNoExtraKeys!1918 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468011 (= lt!211681 (getCurrentListMapNoExtraKeys!1918 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468012 () Bool)

(declare-fun e!273889 () Bool)

(declare-fun tp_is_empty!12953 () Bool)

(assert (=> b!468012 (= e!273889 tp_is_empty!12953)))

(declare-fun b!468013 () Bool)

(declare-fun res!279780 () Bool)

(assert (=> b!468013 (=> (not res!279780) (not e!273890))))

(assert (=> b!468013 (= res!279780 (and (= (size!14595 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14594 _keys!1025) (size!14595 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279777 () Bool)

(assert (=> start!41944 (=> (not res!279777) (not e!273890))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41944 (= res!279777 (validMask!0 mask!1365))))

(assert (=> start!41944 e!273890))

(assert (=> start!41944 tp_is_empty!12953))

(assert (=> start!41944 tp!40588))

(assert (=> start!41944 true))

(declare-fun array_inv!10272 (array!29637) Bool)

(assert (=> start!41944 (array_inv!10272 _keys!1025)))

(declare-fun e!273885 () Bool)

(declare-fun array_inv!10273 (array!29639) Bool)

(assert (=> start!41944 (and (array_inv!10273 _values!833) e!273885)))

(declare-fun b!468014 () Bool)

(declare-fun e!273887 () Bool)

(assert (=> b!468014 (= e!273887 tp_is_empty!12953)))

(declare-fun b!468015 () Bool)

(declare-fun res!279779 () Bool)

(assert (=> b!468015 (=> (not res!279779) (not e!273890))))

(declare-datatypes ((List!8667 0))(
  ( (Nil!8664) (Cons!8663 (h!9519 (_ BitVec 64)) (t!14631 List!8667)) )
))
(declare-fun arrayNoDuplicates!0 (array!29637 (_ BitVec 32) List!8667) Bool)

(assert (=> b!468015 (= res!279779 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8664))))

(declare-fun b!468016 () Bool)

(declare-fun mapRes!21121 () Bool)

(assert (=> b!468016 (= e!273885 (and e!273887 mapRes!21121))))

(declare-fun condMapEmpty!21121 () Bool)

(declare-fun mapDefault!21121 () ValueCell!6133)

