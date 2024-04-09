; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82802 () Bool)

(assert start!82802)

(declare-fun b_free!18907 () Bool)

(declare-fun b_next!18907 () Bool)

(assert (=> start!82802 (= b_free!18907 (not b_next!18907))))

(declare-fun tp!65842 () Bool)

(declare-fun b_and!30413 () Bool)

(assert (=> start!82802 (= tp!65842 b_and!30413)))

(declare-fun mapNonEmpty!34558 () Bool)

(declare-fun mapRes!34558 () Bool)

(declare-fun tp!65841 () Bool)

(declare-fun e!544218 () Bool)

(assert (=> mapNonEmpty!34558 (= mapRes!34558 (and tp!65841 e!544218))))

(declare-datatypes ((V!33929 0))(
  ( (V!33930 (val!10905 Int)) )
))
(declare-datatypes ((ValueCell!10373 0))(
  ( (ValueCellFull!10373 (v!13463 V!33929)) (EmptyCell!10373) )
))
(declare-fun mapRest!34558 () (Array (_ BitVec 32) ValueCell!10373))

(declare-fun mapValue!34558 () ValueCell!10373)

(declare-fun mapKey!34558 () (_ BitVec 32))

(declare-datatypes ((array!59483 0))(
  ( (array!59484 (arr!28606 (Array (_ BitVec 32) ValueCell!10373)) (size!29086 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59483)

(assert (=> mapNonEmpty!34558 (= (arr!28606 _values!1400) (store mapRest!34558 mapKey!34558 mapValue!34558))))

(declare-fun res!646286 () Bool)

(declare-fun e!544217 () Bool)

(assert (=> start!82802 (=> (not res!646286) (not e!544217))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82802 (= res!646286 (validMask!0 mask!2110))))

(assert (=> start!82802 e!544217))

(assert (=> start!82802 true))

(declare-fun e!544216 () Bool)

(declare-fun array_inv!22061 (array!59483) Bool)

(assert (=> start!82802 (and (array_inv!22061 _values!1400) e!544216)))

(declare-datatypes ((array!59485 0))(
  ( (array!59486 (arr!28607 (Array (_ BitVec 32) (_ BitVec 64))) (size!29087 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59485)

(declare-fun array_inv!22062 (array!59485) Bool)

(assert (=> start!82802 (array_inv!22062 _keys!1686)))

(assert (=> start!82802 tp!65842))

(declare-fun tp_is_empty!21709 () Bool)

(assert (=> start!82802 tp_is_empty!21709))

(declare-fun b!965339 () Bool)

(declare-fun res!646288 () Bool)

(assert (=> b!965339 (=> (not res!646288) (not e!544217))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!965339 (= res!646288 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29087 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29087 _keys!1686))))))

(declare-fun b!965340 () Bool)

(declare-fun res!646287 () Bool)

(assert (=> b!965340 (=> (not res!646287) (not e!544217))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59485 (_ BitVec 32)) Bool)

(assert (=> b!965340 (= res!646287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!965341 () Bool)

(assert (=> b!965341 (= e!544218 tp_is_empty!21709)))

(declare-fun b!965342 () Bool)

(declare-fun res!646289 () Bool)

(assert (=> b!965342 (=> (not res!646289) (not e!544217))))

(declare-datatypes ((List!19977 0))(
  ( (Nil!19974) (Cons!19973 (h!21135 (_ BitVec 64)) (t!28348 List!19977)) )
))
(declare-fun arrayNoDuplicates!0 (array!59485 (_ BitVec 32) List!19977) Bool)

(assert (=> b!965342 (= res!646289 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19974))))

(declare-fun b!965343 () Bool)

(declare-fun res!646284 () Bool)

(assert (=> b!965343 (=> (not res!646284) (not e!544217))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!965343 (= res!646284 (and (= (size!29086 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29087 _keys!1686) (size!29086 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965344 () Bool)

(assert (=> b!965344 (= e!544217 false)))

(declare-fun minValue!1342 () V!33929)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33929)

(declare-fun lt!431190 () Bool)

(declare-datatypes ((tuple2!14098 0))(
  ( (tuple2!14099 (_1!7059 (_ BitVec 64)) (_2!7059 V!33929)) )
))
(declare-datatypes ((List!19978 0))(
  ( (Nil!19975) (Cons!19974 (h!21136 tuple2!14098) (t!28349 List!19978)) )
))
(declare-datatypes ((ListLongMap!12809 0))(
  ( (ListLongMap!12810 (toList!6420 List!19978)) )
))
(declare-fun contains!5474 (ListLongMap!12809 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3605 (array!59485 array!59483 (_ BitVec 32) (_ BitVec 32) V!33929 V!33929 (_ BitVec 32) Int) ListLongMap!12809)

(assert (=> b!965344 (= lt!431190 (contains!5474 (getCurrentListMap!3605 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28607 _keys!1686) i!803)))))

(declare-fun b!965345 () Bool)

(declare-fun e!544215 () Bool)

(assert (=> b!965345 (= e!544215 tp_is_empty!21709)))

(declare-fun mapIsEmpty!34558 () Bool)

(assert (=> mapIsEmpty!34558 mapRes!34558))

(declare-fun b!965346 () Bool)

(assert (=> b!965346 (= e!544216 (and e!544215 mapRes!34558))))

(declare-fun condMapEmpty!34558 () Bool)

(declare-fun mapDefault!34558 () ValueCell!10373)

