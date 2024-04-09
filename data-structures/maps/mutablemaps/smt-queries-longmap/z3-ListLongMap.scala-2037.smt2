; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35400 () Bool)

(assert start!35400)

(declare-fun b!354111 () Bool)

(declare-fun e!217021 () Bool)

(assert (=> b!354111 (= e!217021 false)))

(declare-fun lt!165643 () Bool)

(declare-datatypes ((array!19247 0))(
  ( (array!19248 (arr!9114 (Array (_ BitVec 32) (_ BitVec 64))) (size!9466 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19247)

(declare-datatypes ((List!5313 0))(
  ( (Nil!5310) (Cons!5309 (h!6165 (_ BitVec 64)) (t!10471 List!5313)) )
))
(declare-fun arrayNoDuplicates!0 (array!19247 (_ BitVec 32) List!5313) Bool)

(assert (=> b!354111 (= lt!165643 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5310))))

(declare-fun b!354112 () Bool)

(declare-fun e!217023 () Bool)

(declare-fun tp_is_empty!7845 () Bool)

(assert (=> b!354112 (= e!217023 tp_is_empty!7845)))

(declare-fun b!354113 () Bool)

(declare-fun res!196371 () Bool)

(assert (=> b!354113 (=> (not res!196371) (not e!217021))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11437 0))(
  ( (V!11438 (val!3967 Int)) )
))
(declare-datatypes ((ValueCell!3579 0))(
  ( (ValueCellFull!3579 (v!6157 V!11437)) (EmptyCell!3579) )
))
(declare-datatypes ((array!19249 0))(
  ( (array!19250 (arr!9115 (Array (_ BitVec 32) ValueCell!3579)) (size!9467 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19249)

(assert (=> b!354113 (= res!196371 (and (= (size!9467 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9466 _keys!1456) (size!9467 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!13275 () Bool)

(declare-fun mapRes!13275 () Bool)

(declare-fun tp!27171 () Bool)

(declare-fun e!217025 () Bool)

(assert (=> mapNonEmpty!13275 (= mapRes!13275 (and tp!27171 e!217025))))

(declare-fun mapRest!13275 () (Array (_ BitVec 32) ValueCell!3579))

(declare-fun mapValue!13275 () ValueCell!3579)

(declare-fun mapKey!13275 () (_ BitVec 32))

(assert (=> mapNonEmpty!13275 (= (arr!9115 _values!1208) (store mapRest!13275 mapKey!13275 mapValue!13275))))

(declare-fun b!354114 () Bool)

(assert (=> b!354114 (= e!217025 tp_is_empty!7845)))

(declare-fun b!354115 () Bool)

(declare-fun e!217024 () Bool)

(assert (=> b!354115 (= e!217024 (and e!217023 mapRes!13275))))

(declare-fun condMapEmpty!13275 () Bool)

(declare-fun mapDefault!13275 () ValueCell!3579)

(assert (=> b!354115 (= condMapEmpty!13275 (= (arr!9115 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3579)) mapDefault!13275)))))

(declare-fun res!196370 () Bool)

(assert (=> start!35400 (=> (not res!196370) (not e!217021))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35400 (= res!196370 (validMask!0 mask!1842))))

(assert (=> start!35400 e!217021))

(assert (=> start!35400 true))

(declare-fun array_inv!6708 (array!19249) Bool)

(assert (=> start!35400 (and (array_inv!6708 _values!1208) e!217024)))

(declare-fun array_inv!6709 (array!19247) Bool)

(assert (=> start!35400 (array_inv!6709 _keys!1456)))

(declare-fun b!354116 () Bool)

(declare-fun res!196372 () Bool)

(assert (=> b!354116 (=> (not res!196372) (not e!217021))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19247 (_ BitVec 32)) Bool)

(assert (=> b!354116 (= res!196372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapIsEmpty!13275 () Bool)

(assert (=> mapIsEmpty!13275 mapRes!13275))

(assert (= (and start!35400 res!196370) b!354113))

(assert (= (and b!354113 res!196371) b!354116))

(assert (= (and b!354116 res!196372) b!354111))

(assert (= (and b!354115 condMapEmpty!13275) mapIsEmpty!13275))

(assert (= (and b!354115 (not condMapEmpty!13275)) mapNonEmpty!13275))

(get-info :version)

(assert (= (and mapNonEmpty!13275 ((_ is ValueCellFull!3579) mapValue!13275)) b!354114))

(assert (= (and b!354115 ((_ is ValueCellFull!3579) mapDefault!13275)) b!354112))

(assert (= start!35400 b!354115))

(declare-fun m!353211 () Bool)

(assert (=> b!354111 m!353211))

(declare-fun m!353213 () Bool)

(assert (=> mapNonEmpty!13275 m!353213))

(declare-fun m!353215 () Bool)

(assert (=> start!35400 m!353215))

(declare-fun m!353217 () Bool)

(assert (=> start!35400 m!353217))

(declare-fun m!353219 () Bool)

(assert (=> start!35400 m!353219))

(declare-fun m!353221 () Bool)

(assert (=> b!354116 m!353221))

(check-sat (not mapNonEmpty!13275) (not start!35400) (not b!354111) tp_is_empty!7845 (not b!354116))
(check-sat)
