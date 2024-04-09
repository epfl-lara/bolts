; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!846 () Bool)

(assert start!846)

(declare-fun b_free!239 () Bool)

(declare-fun b_next!239 () Bool)

(assert (=> start!846 (= b_free!239 (not b_next!239))))

(declare-fun tp!947 () Bool)

(declare-fun b_and!385 () Bool)

(assert (=> start!846 (= tp!947 b_and!385)))

(declare-fun mapIsEmpty!446 () Bool)

(declare-fun mapRes!446 () Bool)

(assert (=> mapIsEmpty!446 mapRes!446))

(declare-fun mapNonEmpty!446 () Bool)

(declare-fun tp!946 () Bool)

(declare-fun e!3777 () Bool)

(assert (=> mapNonEmpty!446 (= mapRes!446 (and tp!946 e!3777))))

(declare-datatypes ((V!599 0))(
  ( (V!600 (val!164 Int)) )
))
(declare-datatypes ((ValueCell!142 0))(
  ( (ValueCellFull!142 (v!1255 V!599)) (EmptyCell!142) )
))
(declare-fun mapRest!446 () (Array (_ BitVec 32) ValueCell!142))

(declare-fun mapValue!446 () ValueCell!142)

(declare-datatypes ((array!567 0))(
  ( (array!568 (arr!272 (Array (_ BitVec 32) ValueCell!142)) (size!334 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!567)

(declare-fun mapKey!446 () (_ BitVec 32))

(assert (=> mapNonEmpty!446 (= (arr!272 _values!1492) (store mapRest!446 mapKey!446 mapValue!446))))

(declare-fun b!6829 () Bool)

(declare-fun res!7063 () Bool)

(declare-fun e!3774 () Bool)

(assert (=> b!6829 (=> (not res!7063) (not e!3774))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!6829 (= res!7063 (validKeyInArray!0 k!1278))))

(declare-fun b!6830 () Bool)

(declare-fun e!3773 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!6830 (= e!3773 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!7067 () Bool)

(assert (=> start!846 (=> (not res!7067) (not e!3774))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!846 (= res!7067 (validMask!0 mask!2250))))

(assert (=> start!846 e!3774))

(assert (=> start!846 tp!947))

(assert (=> start!846 true))

(declare-fun e!3775 () Bool)

(declare-fun array_inv!197 (array!567) Bool)

(assert (=> start!846 (and (array_inv!197 _values!1492) e!3775)))

(declare-fun tp_is_empty!317 () Bool)

(assert (=> start!846 tp_is_empty!317))

(declare-datatypes ((array!569 0))(
  ( (array!570 (arr!273 (Array (_ BitVec 32) (_ BitVec 64))) (size!335 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!569)

(declare-fun array_inv!198 (array!569) Bool)

(assert (=> start!846 (array_inv!198 _keys!1806)))

(declare-fun b!6831 () Bool)

(declare-fun e!3772 () Bool)

(assert (=> b!6831 (= e!3774 (not e!3772))))

(declare-fun res!7065 () Bool)

(assert (=> b!6831 (=> res!7065 e!3772)))

(declare-fun arrayContainsKey!0 (array!569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!6831 (= res!7065 (not (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000)))))

(assert (=> b!6831 e!3773))

(declare-fun c!491 () Bool)

(assert (=> b!6831 (= c!491 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!119 0))(
  ( (Unit!120) )
))
(declare-fun lt!1335 () Unit!119)

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!599)

(declare-fun zeroValue!1434 () V!599)

(declare-fun lemmaKeyInListMapIsInArray!42 (array!569 array!567 (_ BitVec 32) (_ BitVec 32) V!599 V!599 (_ BitVec 64) Int) Unit!119)

(assert (=> b!6831 (= lt!1335 (lemmaKeyInListMapIsInArray!42 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun b!6832 () Bool)

(declare-fun res!7061 () Bool)

(assert (=> b!6832 (=> (not res!7061) (not e!3774))))

(assert (=> b!6832 (= res!7061 (and (= (size!334 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!335 _keys!1806) (size!334 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!6833 () Bool)

(assert (=> b!6833 (= e!3777 tp_is_empty!317)))

(declare-fun b!6834 () Bool)

(declare-fun e!3779 () Bool)

(assert (=> b!6834 (= e!3779 true)))

(declare-datatypes ((SeekEntryResult!27 0))(
  ( (MissingZero!27 (index!2227 (_ BitVec 32))) (Found!27 (index!2228 (_ BitVec 32))) (Intermediate!27 (undefined!839 Bool) (index!2229 (_ BitVec 32)) (x!2557 (_ BitVec 32))) (Undefined!27) (MissingVacant!27 (index!2230 (_ BitVec 32))) )
))
(declare-fun lt!1333 () SeekEntryResult!27)

(declare-fun lt!1334 () (_ BitVec 32))

(assert (=> b!6834 (and (is-Found!27 lt!1333) (= (index!2228 lt!1333) lt!1334))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!569 (_ BitVec 32)) SeekEntryResult!27)

(assert (=> b!6834 (= lt!1333 (seekEntry!0 k!1278 _keys!1806 mask!2250))))

(declare-fun lt!1332 () Unit!119)

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!569 (_ BitVec 32)) Unit!119)

(assert (=> b!6834 (= lt!1332 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 k!1278 lt!1334 _keys!1806 mask!2250))))

(declare-fun b!6835 () Bool)

(declare-fun res!7062 () Bool)

(assert (=> b!6835 (=> (not res!7062) (not e!3774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!569 (_ BitVec 32)) Bool)

(assert (=> b!6835 (= res!7062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!6836 () Bool)

(declare-fun res!7068 () Bool)

(assert (=> b!6836 (=> res!7068 e!3779)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!569 (_ BitVec 32)) SeekEntryResult!27)

(assert (=> b!6836 (= res!7068 (not (= (seekEntryOrOpen!0 k!1278 _keys!1806 mask!2250) (Found!27 lt!1334))))))

(declare-fun b!6837 () Bool)

(declare-fun e!3776 () Bool)

(assert (=> b!6837 (= e!3775 (and e!3776 mapRes!446))))

(declare-fun condMapEmpty!446 () Bool)

(declare-fun mapDefault!446 () ValueCell!142)

