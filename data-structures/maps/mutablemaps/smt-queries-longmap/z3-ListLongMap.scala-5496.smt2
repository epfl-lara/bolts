; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72790 () Bool)

(assert start!72790)

(declare-fun b!844316 () Bool)

(declare-fun res!573761 () Bool)

(declare-fun e!471284 () Bool)

(assert (=> b!844316 (=> (not res!573761) (not e!471284))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26131 0))(
  ( (V!26132 (val!7954 Int)) )
))
(declare-datatypes ((ValueCell!7467 0))(
  ( (ValueCellFull!7467 (v!10375 V!26131)) (EmptyCell!7467) )
))
(declare-datatypes ((array!47842 0))(
  ( (array!47843 (arr!22948 (Array (_ BitVec 32) ValueCell!7467)) (size!23389 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47842)

(declare-datatypes ((array!47844 0))(
  ( (array!47845 (arr!22949 (Array (_ BitVec 32) (_ BitVec 64))) (size!23390 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47844)

(assert (=> b!844316 (= res!573761 (and (= (size!23389 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23390 _keys!868) (size!23389 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844317 () Bool)

(declare-fun res!573760 () Bool)

(assert (=> b!844317 (=> (not res!573760) (not e!471284))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844317 (= res!573760 (validMask!0 mask!1196))))

(declare-fun b!844319 () Bool)

(declare-fun e!471285 () Bool)

(declare-fun tp_is_empty!15813 () Bool)

(assert (=> b!844319 (= e!471285 tp_is_empty!15813)))

(declare-fun mapNonEmpty!25319 () Bool)

(declare-fun mapRes!25319 () Bool)

(declare-fun tp!48638 () Bool)

(assert (=> mapNonEmpty!25319 (= mapRes!25319 (and tp!48638 e!471285))))

(declare-fun mapRest!25319 () (Array (_ BitVec 32) ValueCell!7467))

(declare-fun mapValue!25319 () ValueCell!7467)

(declare-fun mapKey!25319 () (_ BitVec 32))

(assert (=> mapNonEmpty!25319 (= (arr!22948 _values!688) (store mapRest!25319 mapKey!25319 mapValue!25319))))

(declare-fun b!844320 () Bool)

(declare-fun e!471281 () Bool)

(declare-fun e!471283 () Bool)

(assert (=> b!844320 (= e!471281 (and e!471283 mapRes!25319))))

(declare-fun condMapEmpty!25319 () Bool)

(declare-fun mapDefault!25319 () ValueCell!7467)

(assert (=> b!844320 (= condMapEmpty!25319 (= (arr!22948 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7467)) mapDefault!25319)))))

(declare-fun mapIsEmpty!25319 () Bool)

(assert (=> mapIsEmpty!25319 mapRes!25319))

(declare-fun b!844321 () Bool)

(assert (=> b!844321 (= e!471284 false)))

(declare-fun lt!381231 () Bool)

(declare-datatypes ((List!16339 0))(
  ( (Nil!16336) (Cons!16335 (h!17466 (_ BitVec 64)) (t!22718 List!16339)) )
))
(declare-fun arrayNoDuplicates!0 (array!47844 (_ BitVec 32) List!16339) Bool)

(assert (=> b!844321 (= lt!381231 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16336))))

(declare-fun b!844322 () Bool)

(declare-fun res!573759 () Bool)

(assert (=> b!844322 (=> (not res!573759) (not e!471284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47844 (_ BitVec 32)) Bool)

(assert (=> b!844322 (= res!573759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!573762 () Bool)

(assert (=> start!72790 (=> (not res!573762) (not e!471284))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72790 (= res!573762 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23390 _keys!868))))))

(assert (=> start!72790 e!471284))

(assert (=> start!72790 true))

(declare-fun array_inv!18230 (array!47844) Bool)

(assert (=> start!72790 (array_inv!18230 _keys!868)))

(declare-fun array_inv!18231 (array!47842) Bool)

(assert (=> start!72790 (and (array_inv!18231 _values!688) e!471281)))

(declare-fun b!844318 () Bool)

(assert (=> b!844318 (= e!471283 tp_is_empty!15813)))

(assert (= (and start!72790 res!573762) b!844317))

(assert (= (and b!844317 res!573760) b!844316))

(assert (= (and b!844316 res!573761) b!844322))

(assert (= (and b!844322 res!573759) b!844321))

(assert (= (and b!844320 condMapEmpty!25319) mapIsEmpty!25319))

(assert (= (and b!844320 (not condMapEmpty!25319)) mapNonEmpty!25319))

(get-info :version)

(assert (= (and mapNonEmpty!25319 ((_ is ValueCellFull!7467) mapValue!25319)) b!844319))

(assert (= (and b!844320 ((_ is ValueCellFull!7467) mapDefault!25319)) b!844318))

(assert (= start!72790 b!844320))

(declare-fun m!786665 () Bool)

(assert (=> start!72790 m!786665))

(declare-fun m!786667 () Bool)

(assert (=> start!72790 m!786667))

(declare-fun m!786669 () Bool)

(assert (=> mapNonEmpty!25319 m!786669))

(declare-fun m!786671 () Bool)

(assert (=> b!844317 m!786671))

(declare-fun m!786673 () Bool)

(assert (=> b!844321 m!786673))

(declare-fun m!786675 () Bool)

(assert (=> b!844322 m!786675))

(check-sat (not start!72790) (not b!844317) (not b!844321) (not b!844322) (not mapNonEmpty!25319) tp_is_empty!15813)
(check-sat)
