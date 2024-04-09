; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35388 () Bool)

(assert start!35388)

(declare-fun b!354003 () Bool)

(declare-fun e!216934 () Bool)

(declare-fun e!216935 () Bool)

(declare-fun mapRes!13257 () Bool)

(assert (=> b!354003 (= e!216934 (and e!216935 mapRes!13257))))

(declare-fun condMapEmpty!13257 () Bool)

(declare-datatypes ((V!11421 0))(
  ( (V!11422 (val!3961 Int)) )
))
(declare-datatypes ((ValueCell!3573 0))(
  ( (ValueCellFull!3573 (v!6151 V!11421)) (EmptyCell!3573) )
))
(declare-datatypes ((array!19223 0))(
  ( (array!19224 (arr!9102 (Array (_ BitVec 32) ValueCell!3573)) (size!9454 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19223)

(declare-fun mapDefault!13257 () ValueCell!3573)

(assert (=> b!354003 (= condMapEmpty!13257 (= (arr!9102 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3573)) mapDefault!13257)))))

(declare-fun b!354004 () Bool)

(declare-fun e!216932 () Bool)

(declare-fun tp_is_empty!7833 () Bool)

(assert (=> b!354004 (= e!216932 tp_is_empty!7833)))

(declare-fun b!354005 () Bool)

(declare-fun e!216931 () Bool)

(assert (=> b!354005 (= e!216931 false)))

(declare-fun lt!165625 () Bool)

(declare-datatypes ((array!19225 0))(
  ( (array!19226 (arr!9103 (Array (_ BitVec 32) (_ BitVec 64))) (size!9455 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19225)

(declare-datatypes ((List!5309 0))(
  ( (Nil!5306) (Cons!5305 (h!6161 (_ BitVec 64)) (t!10467 List!5309)) )
))
(declare-fun arrayNoDuplicates!0 (array!19225 (_ BitVec 32) List!5309) Bool)

(assert (=> b!354005 (= lt!165625 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5306))))

(declare-fun mapNonEmpty!13257 () Bool)

(declare-fun tp!27153 () Bool)

(assert (=> mapNonEmpty!13257 (= mapRes!13257 (and tp!27153 e!216932))))

(declare-fun mapKey!13257 () (_ BitVec 32))

(declare-fun mapRest!13257 () (Array (_ BitVec 32) ValueCell!3573))

(declare-fun mapValue!13257 () ValueCell!3573)

(assert (=> mapNonEmpty!13257 (= (arr!9102 _values!1208) (store mapRest!13257 mapKey!13257 mapValue!13257))))

(declare-fun res!196318 () Bool)

(assert (=> start!35388 (=> (not res!196318) (not e!216931))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35388 (= res!196318 (validMask!0 mask!1842))))

(assert (=> start!35388 e!216931))

(assert (=> start!35388 true))

(declare-fun array_inv!6696 (array!19223) Bool)

(assert (=> start!35388 (and (array_inv!6696 _values!1208) e!216934)))

(declare-fun array_inv!6697 (array!19225) Bool)

(assert (=> start!35388 (array_inv!6697 _keys!1456)))

(declare-fun b!354006 () Bool)

(declare-fun res!196317 () Bool)

(assert (=> b!354006 (=> (not res!196317) (not e!216931))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354006 (= res!196317 (and (= (size!9454 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9455 _keys!1456) (size!9454 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354007 () Bool)

(assert (=> b!354007 (= e!216935 tp_is_empty!7833)))

(declare-fun b!354008 () Bool)

(declare-fun res!196316 () Bool)

(assert (=> b!354008 (=> (not res!196316) (not e!216931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19225 (_ BitVec 32)) Bool)

(assert (=> b!354008 (= res!196316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13257 () Bool)

(assert (=> mapIsEmpty!13257 mapRes!13257))

(assert (= (and start!35388 res!196318) b!354006))

(assert (= (and b!354006 res!196317) b!354008))

(assert (= (and b!354008 res!196316) b!354005))

(assert (= (and b!354003 condMapEmpty!13257) mapIsEmpty!13257))

(assert (= (and b!354003 (not condMapEmpty!13257)) mapNonEmpty!13257))

(get-info :version)

(assert (= (and mapNonEmpty!13257 ((_ is ValueCellFull!3573) mapValue!13257)) b!354004))

(assert (= (and b!354003 ((_ is ValueCellFull!3573) mapDefault!13257)) b!354007))

(assert (= start!35388 b!354003))

(declare-fun m!353139 () Bool)

(assert (=> b!354005 m!353139))

(declare-fun m!353141 () Bool)

(assert (=> mapNonEmpty!13257 m!353141))

(declare-fun m!353143 () Bool)

(assert (=> start!35388 m!353143))

(declare-fun m!353145 () Bool)

(assert (=> start!35388 m!353145))

(declare-fun m!353147 () Bool)

(assert (=> start!35388 m!353147))

(declare-fun m!353149 () Bool)

(assert (=> b!354008 m!353149))

(check-sat (not mapNonEmpty!13257) (not b!354008) tp_is_empty!7833 (not start!35388) (not b!354005))
(check-sat)
