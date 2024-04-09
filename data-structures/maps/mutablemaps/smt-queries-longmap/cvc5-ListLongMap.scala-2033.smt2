; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35374 () Bool)

(assert start!35374)

(declare-fun b!353877 () Bool)

(declare-fun e!216827 () Bool)

(assert (=> b!353877 (= e!216827 false)))

(declare-fun lt!165604 () Bool)

(declare-datatypes ((array!19197 0))(
  ( (array!19198 (arr!9089 (Array (_ BitVec 32) (_ BitVec 64))) (size!9441 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19197)

(declare-datatypes ((List!5305 0))(
  ( (Nil!5302) (Cons!5301 (h!6157 (_ BitVec 64)) (t!10463 List!5305)) )
))
(declare-fun arrayNoDuplicates!0 (array!19197 (_ BitVec 32) List!5305) Bool)

(assert (=> b!353877 (= lt!165604 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5302))))

(declare-fun mapIsEmpty!13236 () Bool)

(declare-fun mapRes!13236 () Bool)

(assert (=> mapIsEmpty!13236 mapRes!13236))

(declare-fun res!196254 () Bool)

(assert (=> start!35374 (=> (not res!196254) (not e!216827))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35374 (= res!196254 (validMask!0 mask!1842))))

(assert (=> start!35374 e!216827))

(assert (=> start!35374 true))

(declare-datatypes ((V!11403 0))(
  ( (V!11404 (val!3954 Int)) )
))
(declare-datatypes ((ValueCell!3566 0))(
  ( (ValueCellFull!3566 (v!6144 V!11403)) (EmptyCell!3566) )
))
(declare-datatypes ((array!19199 0))(
  ( (array!19200 (arr!9090 (Array (_ BitVec 32) ValueCell!3566)) (size!9442 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19199)

(declare-fun e!216828 () Bool)

(declare-fun array_inv!6688 (array!19199) Bool)

(assert (=> start!35374 (and (array_inv!6688 _values!1208) e!216828)))

(declare-fun array_inv!6689 (array!19197) Bool)

(assert (=> start!35374 (array_inv!6689 _keys!1456)))

(declare-fun b!353878 () Bool)

(declare-fun e!216830 () Bool)

(declare-fun tp_is_empty!7819 () Bool)

(assert (=> b!353878 (= e!216830 tp_is_empty!7819)))

(declare-fun b!353879 () Bool)

(declare-fun res!196253 () Bool)

(assert (=> b!353879 (=> (not res!196253) (not e!216827))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19197 (_ BitVec 32)) Bool)

(assert (=> b!353879 (= res!196253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13236 () Bool)

(declare-fun tp!27132 () Bool)

(assert (=> mapNonEmpty!13236 (= mapRes!13236 (and tp!27132 e!216830))))

(declare-fun mapValue!13236 () ValueCell!3566)

(declare-fun mapKey!13236 () (_ BitVec 32))

(declare-fun mapRest!13236 () (Array (_ BitVec 32) ValueCell!3566))

(assert (=> mapNonEmpty!13236 (= (arr!9090 _values!1208) (store mapRest!13236 mapKey!13236 mapValue!13236))))

(declare-fun b!353880 () Bool)

(declare-fun e!216829 () Bool)

(assert (=> b!353880 (= e!216829 tp_is_empty!7819)))

(declare-fun b!353881 () Bool)

(declare-fun res!196255 () Bool)

(assert (=> b!353881 (=> (not res!196255) (not e!216827))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353881 (= res!196255 (and (= (size!9442 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9441 _keys!1456) (size!9442 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!353882 () Bool)

(assert (=> b!353882 (= e!216828 (and e!216829 mapRes!13236))))

(declare-fun condMapEmpty!13236 () Bool)

(declare-fun mapDefault!13236 () ValueCell!3566)

