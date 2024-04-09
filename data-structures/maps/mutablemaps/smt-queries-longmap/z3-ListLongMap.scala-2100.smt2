; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35778 () Bool)

(assert start!35778)

(declare-fun b!359115 () Bool)

(declare-fun e!219937 () Bool)

(declare-fun tp_is_empty!8223 () Bool)

(assert (=> b!359115 (= e!219937 tp_is_empty!8223)))

(declare-fun b!359116 () Bool)

(declare-fun e!219941 () Bool)

(assert (=> b!359116 (= e!219941 false)))

(declare-fun lt!166282 () Bool)

(declare-datatypes ((array!19967 0))(
  ( (array!19968 (arr!9474 (Array (_ BitVec 32) (_ BitVec 64))) (size!9826 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19967)

(declare-datatypes ((List!5486 0))(
  ( (Nil!5483) (Cons!5482 (h!6338 (_ BitVec 64)) (t!10644 List!5486)) )
))
(declare-fun arrayNoDuplicates!0 (array!19967 (_ BitVec 32) List!5486) Bool)

(assert (=> b!359116 (= lt!166282 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5483))))

(declare-fun res!199673 () Bool)

(assert (=> start!35778 (=> (not res!199673) (not e!219941))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35778 (= res!199673 (validMask!0 mask!1842))))

(assert (=> start!35778 e!219941))

(assert (=> start!35778 true))

(declare-datatypes ((V!11941 0))(
  ( (V!11942 (val!4156 Int)) )
))
(declare-datatypes ((ValueCell!3768 0))(
  ( (ValueCellFull!3768 (v!6346 V!11941)) (EmptyCell!3768) )
))
(declare-datatypes ((array!19969 0))(
  ( (array!19970 (arr!9475 (Array (_ BitVec 32) ValueCell!3768)) (size!9827 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19969)

(declare-fun e!219938 () Bool)

(declare-fun array_inv!6972 (array!19969) Bool)

(assert (=> start!35778 (and (array_inv!6972 _values!1208) e!219938)))

(declare-fun array_inv!6973 (array!19967) Bool)

(assert (=> start!35778 (array_inv!6973 _keys!1456)))

(declare-fun mapIsEmpty!13842 () Bool)

(declare-fun mapRes!13842 () Bool)

(assert (=> mapIsEmpty!13842 mapRes!13842))

(declare-fun mapNonEmpty!13842 () Bool)

(declare-fun tp!27909 () Bool)

(assert (=> mapNonEmpty!13842 (= mapRes!13842 (and tp!27909 e!219937))))

(declare-fun mapRest!13842 () (Array (_ BitVec 32) ValueCell!3768))

(declare-fun mapValue!13842 () ValueCell!3768)

(declare-fun mapKey!13842 () (_ BitVec 32))

(assert (=> mapNonEmpty!13842 (= (arr!9475 _values!1208) (store mapRest!13842 mapKey!13842 mapValue!13842))))

(declare-fun b!359117 () Bool)

(declare-fun e!219940 () Bool)

(assert (=> b!359117 (= e!219938 (and e!219940 mapRes!13842))))

(declare-fun condMapEmpty!13842 () Bool)

(declare-fun mapDefault!13842 () ValueCell!3768)

(assert (=> b!359117 (= condMapEmpty!13842 (= (arr!9475 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3768)) mapDefault!13842)))))

(declare-fun b!359118 () Bool)

(declare-fun res!199674 () Bool)

(assert (=> b!359118 (=> (not res!199674) (not e!219941))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359118 (= res!199674 (and (= (size!9827 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9826 _keys!1456) (size!9827 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359119 () Bool)

(declare-fun res!199675 () Bool)

(assert (=> b!359119 (=> (not res!199675) (not e!219941))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19967 (_ BitVec 32)) Bool)

(assert (=> b!359119 (= res!199675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359120 () Bool)

(assert (=> b!359120 (= e!219940 tp_is_empty!8223)))

(assert (= (and start!35778 res!199673) b!359118))

(assert (= (and b!359118 res!199674) b!359119))

(assert (= (and b!359119 res!199675) b!359116))

(assert (= (and b!359117 condMapEmpty!13842) mapIsEmpty!13842))

(assert (= (and b!359117 (not condMapEmpty!13842)) mapNonEmpty!13842))

(get-info :version)

(assert (= (and mapNonEmpty!13842 ((_ is ValueCellFull!3768) mapValue!13842)) b!359115))

(assert (= (and b!359117 ((_ is ValueCellFull!3768) mapDefault!13842)) b!359120))

(assert (= start!35778 b!359117))

(declare-fun m!356703 () Bool)

(assert (=> b!359116 m!356703))

(declare-fun m!356705 () Bool)

(assert (=> start!35778 m!356705))

(declare-fun m!356707 () Bool)

(assert (=> start!35778 m!356707))

(declare-fun m!356709 () Bool)

(assert (=> start!35778 m!356709))

(declare-fun m!356711 () Bool)

(assert (=> mapNonEmpty!13842 m!356711))

(declare-fun m!356713 () Bool)

(assert (=> b!359119 m!356713))

(check-sat (not b!359116) tp_is_empty!8223 (not mapNonEmpty!13842) (not start!35778) (not b!359119))
(check-sat)
