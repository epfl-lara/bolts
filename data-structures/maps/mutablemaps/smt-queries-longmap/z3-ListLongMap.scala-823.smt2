; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20048 () Bool)

(assert start!20048)

(declare-fun b!196171 () Bool)

(declare-fun res!92598 () Bool)

(declare-fun e!129172 () Bool)

(assert (=> b!196171 (=> (not res!92598) (not e!129172))))

(declare-datatypes ((array!8364 0))(
  ( (array!8365 (arr!3932 (Array (_ BitVec 32) (_ BitVec 64))) (size!4257 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8364)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5715 0))(
  ( (V!5716 (val!2320 Int)) )
))
(declare-datatypes ((ValueCell!1932 0))(
  ( (ValueCellFull!1932 (v!4286 V!5715)) (EmptyCell!1932) )
))
(declare-datatypes ((array!8366 0))(
  ( (array!8367 (arr!3933 (Array (_ BitVec 32) ValueCell!1932)) (size!4258 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8366)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!196171 (= res!92598 (and (= (size!4258 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4257 _keys!825) (size!4258 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun res!92599 () Bool)

(assert (=> start!20048 (=> (not res!92599) (not e!129172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20048 (= res!92599 (validMask!0 mask!1149))))

(assert (=> start!20048 e!129172))

(assert (=> start!20048 true))

(declare-fun e!129173 () Bool)

(declare-fun array_inv!2545 (array!8366) Bool)

(assert (=> start!20048 (and (array_inv!2545 _values!649) e!129173)))

(declare-fun array_inv!2546 (array!8364) Bool)

(assert (=> start!20048 (array_inv!2546 _keys!825)))

(declare-fun b!196172 () Bool)

(declare-fun e!129171 () Bool)

(declare-fun tp_is_empty!4551 () Bool)

(assert (=> b!196172 (= e!129171 tp_is_empty!4551)))

(declare-fun b!196173 () Bool)

(declare-fun res!92597 () Bool)

(assert (=> b!196173 (=> (not res!92597) (not e!129172))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8364 (_ BitVec 32)) Bool)

(assert (=> b!196173 (= res!92597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!7895 () Bool)

(declare-fun mapRes!7895 () Bool)

(declare-fun tp!17183 () Bool)

(assert (=> mapNonEmpty!7895 (= mapRes!7895 (and tp!17183 e!129171))))

(declare-fun mapKey!7895 () (_ BitVec 32))

(declare-fun mapValue!7895 () ValueCell!1932)

(declare-fun mapRest!7895 () (Array (_ BitVec 32) ValueCell!1932))

(assert (=> mapNonEmpty!7895 (= (arr!3933 _values!649) (store mapRest!7895 mapKey!7895 mapValue!7895))))

(declare-fun b!196174 () Bool)

(declare-fun e!129175 () Bool)

(assert (=> b!196174 (= e!129175 tp_is_empty!4551)))

(declare-fun b!196175 () Bool)

(assert (=> b!196175 (= e!129172 false)))

(declare-fun lt!97603 () Bool)

(declare-datatypes ((List!2484 0))(
  ( (Nil!2481) (Cons!2480 (h!3122 (_ BitVec 64)) (t!7423 List!2484)) )
))
(declare-fun arrayNoDuplicates!0 (array!8364 (_ BitVec 32) List!2484) Bool)

(assert (=> b!196175 (= lt!97603 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2481))))

(declare-fun mapIsEmpty!7895 () Bool)

(assert (=> mapIsEmpty!7895 mapRes!7895))

(declare-fun b!196176 () Bool)

(assert (=> b!196176 (= e!129173 (and e!129175 mapRes!7895))))

(declare-fun condMapEmpty!7895 () Bool)

(declare-fun mapDefault!7895 () ValueCell!1932)

(assert (=> b!196176 (= condMapEmpty!7895 (= (arr!3933 _values!649) ((as const (Array (_ BitVec 32) ValueCell!1932)) mapDefault!7895)))))

(assert (= (and start!20048 res!92599) b!196171))

(assert (= (and b!196171 res!92598) b!196173))

(assert (= (and b!196173 res!92597) b!196175))

(assert (= (and b!196176 condMapEmpty!7895) mapIsEmpty!7895))

(assert (= (and b!196176 (not condMapEmpty!7895)) mapNonEmpty!7895))

(get-info :version)

(assert (= (and mapNonEmpty!7895 ((_ is ValueCellFull!1932) mapValue!7895)) b!196172))

(assert (= (and b!196176 ((_ is ValueCellFull!1932) mapDefault!7895)) b!196174))

(assert (= start!20048 b!196176))

(declare-fun m!223545 () Bool)

(assert (=> start!20048 m!223545))

(declare-fun m!223547 () Bool)

(assert (=> start!20048 m!223547))

(declare-fun m!223549 () Bool)

(assert (=> start!20048 m!223549))

(declare-fun m!223551 () Bool)

(assert (=> b!196173 m!223551))

(declare-fun m!223553 () Bool)

(assert (=> mapNonEmpty!7895 m!223553))

(declare-fun m!223555 () Bool)

(assert (=> b!196175 m!223555))

(check-sat (not start!20048) (not mapNonEmpty!7895) (not b!196175) tp_is_empty!4551 (not b!196173))
(check-sat)
