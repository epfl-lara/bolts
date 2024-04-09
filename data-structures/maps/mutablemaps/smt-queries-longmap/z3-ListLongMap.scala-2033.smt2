; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35376 () Bool)

(assert start!35376)

(declare-fun b!353895 () Bool)

(declare-fun e!216845 () Bool)

(assert (=> b!353895 (= e!216845 false)))

(declare-fun lt!165607 () Bool)

(declare-datatypes ((array!19201 0))(
  ( (array!19202 (arr!9091 (Array (_ BitVec 32) (_ BitVec 64))) (size!9443 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19201)

(declare-datatypes ((List!5306 0))(
  ( (Nil!5303) (Cons!5302 (h!6158 (_ BitVec 64)) (t!10464 List!5306)) )
))
(declare-fun arrayNoDuplicates!0 (array!19201 (_ BitVec 32) List!5306) Bool)

(assert (=> b!353895 (= lt!165607 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5303))))

(declare-fun mapNonEmpty!13239 () Bool)

(declare-fun mapRes!13239 () Bool)

(declare-fun tp!27135 () Bool)

(declare-fun e!216843 () Bool)

(assert (=> mapNonEmpty!13239 (= mapRes!13239 (and tp!27135 e!216843))))

(declare-datatypes ((V!11405 0))(
  ( (V!11406 (val!3955 Int)) )
))
(declare-datatypes ((ValueCell!3567 0))(
  ( (ValueCellFull!3567 (v!6145 V!11405)) (EmptyCell!3567) )
))
(declare-fun mapRest!13239 () (Array (_ BitVec 32) ValueCell!3567))

(declare-fun mapValue!13239 () ValueCell!3567)

(declare-datatypes ((array!19203 0))(
  ( (array!19204 (arr!9092 (Array (_ BitVec 32) ValueCell!3567)) (size!9444 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19203)

(declare-fun mapKey!13239 () (_ BitVec 32))

(assert (=> mapNonEmpty!13239 (= (arr!9092 _values!1208) (store mapRest!13239 mapKey!13239 mapValue!13239))))

(declare-fun b!353896 () Bool)

(declare-fun e!216844 () Bool)

(declare-fun e!216841 () Bool)

(assert (=> b!353896 (= e!216844 (and e!216841 mapRes!13239))))

(declare-fun condMapEmpty!13239 () Bool)

(declare-fun mapDefault!13239 () ValueCell!3567)

(assert (=> b!353896 (= condMapEmpty!13239 (= (arr!9092 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3567)) mapDefault!13239)))))

(declare-fun b!353897 () Bool)

(declare-fun res!196264 () Bool)

(assert (=> b!353897 (=> (not res!196264) (not e!216845))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19201 (_ BitVec 32)) Bool)

(assert (=> b!353897 (= res!196264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!196263 () Bool)

(assert (=> start!35376 (=> (not res!196263) (not e!216845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35376 (= res!196263 (validMask!0 mask!1842))))

(assert (=> start!35376 e!216845))

(assert (=> start!35376 true))

(declare-fun array_inv!6690 (array!19203) Bool)

(assert (=> start!35376 (and (array_inv!6690 _values!1208) e!216844)))

(declare-fun array_inv!6691 (array!19201) Bool)

(assert (=> start!35376 (array_inv!6691 _keys!1456)))

(declare-fun b!353898 () Bool)

(declare-fun tp_is_empty!7821 () Bool)

(assert (=> b!353898 (= e!216843 tp_is_empty!7821)))

(declare-fun b!353899 () Bool)

(declare-fun res!196262 () Bool)

(assert (=> b!353899 (=> (not res!196262) (not e!216845))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353899 (= res!196262 (and (= (size!9444 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9443 _keys!1456) (size!9444 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13239 () Bool)

(assert (=> mapIsEmpty!13239 mapRes!13239))

(declare-fun b!353900 () Bool)

(assert (=> b!353900 (= e!216841 tp_is_empty!7821)))

(assert (= (and start!35376 res!196263) b!353899))

(assert (= (and b!353899 res!196262) b!353897))

(assert (= (and b!353897 res!196264) b!353895))

(assert (= (and b!353896 condMapEmpty!13239) mapIsEmpty!13239))

(assert (= (and b!353896 (not condMapEmpty!13239)) mapNonEmpty!13239))

(get-info :version)

(assert (= (and mapNonEmpty!13239 ((_ is ValueCellFull!3567) mapValue!13239)) b!353898))

(assert (= (and b!353896 ((_ is ValueCellFull!3567) mapDefault!13239)) b!353900))

(assert (= start!35376 b!353896))

(declare-fun m!353067 () Bool)

(assert (=> b!353895 m!353067))

(declare-fun m!353069 () Bool)

(assert (=> mapNonEmpty!13239 m!353069))

(declare-fun m!353071 () Bool)

(assert (=> b!353897 m!353071))

(declare-fun m!353073 () Bool)

(assert (=> start!35376 m!353073))

(declare-fun m!353075 () Bool)

(assert (=> start!35376 m!353075))

(declare-fun m!353077 () Bool)

(assert (=> start!35376 m!353077))

(check-sat (not mapNonEmpty!13239) (not b!353897) (not b!353895) (not start!35376) tp_is_empty!7821)
(check-sat)
