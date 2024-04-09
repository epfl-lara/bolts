; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72724 () Bool)

(assert start!72724)

(declare-fun b!843623 () Bool)

(declare-fun res!573364 () Bool)

(declare-fun e!470787 () Bool)

(assert (=> b!843623 (=> (not res!573364) (not e!470787))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47720 0))(
  ( (array!47721 (arr!22887 (Array (_ BitVec 32) (_ BitVec 64))) (size!23328 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47720)

(declare-datatypes ((V!26043 0))(
  ( (V!26044 (val!7921 Int)) )
))
(declare-datatypes ((ValueCell!7434 0))(
  ( (ValueCellFull!7434 (v!10342 V!26043)) (EmptyCell!7434) )
))
(declare-datatypes ((array!47722 0))(
  ( (array!47723 (arr!22888 (Array (_ BitVec 32) ValueCell!7434)) (size!23329 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47722)

(assert (=> b!843623 (= res!573364 (and (= (size!23329 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23328 _keys!868) (size!23329 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843624 () Bool)

(declare-fun res!573363 () Bool)

(assert (=> b!843624 (=> (not res!573363) (not e!470787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843624 (= res!573363 (validMask!0 mask!1196))))

(declare-fun b!843625 () Bool)

(declare-fun e!470789 () Bool)

(declare-fun e!470788 () Bool)

(declare-fun mapRes!25220 () Bool)

(assert (=> b!843625 (= e!470789 (and e!470788 mapRes!25220))))

(declare-fun condMapEmpty!25220 () Bool)

(declare-fun mapDefault!25220 () ValueCell!7434)

(assert (=> b!843625 (= condMapEmpty!25220 (= (arr!22888 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7434)) mapDefault!25220)))))

(declare-fun b!843626 () Bool)

(assert (=> b!843626 (= e!470787 false)))

(declare-fun lt!381132 () Bool)

(declare-datatypes ((List!16316 0))(
  ( (Nil!16313) (Cons!16312 (h!17443 (_ BitVec 64)) (t!22695 List!16316)) )
))
(declare-fun arrayNoDuplicates!0 (array!47720 (_ BitVec 32) List!16316) Bool)

(assert (=> b!843626 (= lt!381132 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16313))))

(declare-fun res!573366 () Bool)

(assert (=> start!72724 (=> (not res!573366) (not e!470787))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72724 (= res!573366 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23328 _keys!868))))))

(assert (=> start!72724 e!470787))

(assert (=> start!72724 true))

(declare-fun array_inv!18190 (array!47720) Bool)

(assert (=> start!72724 (array_inv!18190 _keys!868)))

(declare-fun array_inv!18191 (array!47722) Bool)

(assert (=> start!72724 (and (array_inv!18191 _values!688) e!470789)))

(declare-fun mapNonEmpty!25220 () Bool)

(declare-fun tp!48539 () Bool)

(declare-fun e!470790 () Bool)

(assert (=> mapNonEmpty!25220 (= mapRes!25220 (and tp!48539 e!470790))))

(declare-fun mapKey!25220 () (_ BitVec 32))

(declare-fun mapRest!25220 () (Array (_ BitVec 32) ValueCell!7434))

(declare-fun mapValue!25220 () ValueCell!7434)

(assert (=> mapNonEmpty!25220 (= (arr!22888 _values!688) (store mapRest!25220 mapKey!25220 mapValue!25220))))

(declare-fun b!843627 () Bool)

(declare-fun tp_is_empty!15747 () Bool)

(assert (=> b!843627 (= e!470788 tp_is_empty!15747)))

(declare-fun mapIsEmpty!25220 () Bool)

(assert (=> mapIsEmpty!25220 mapRes!25220))

(declare-fun b!843628 () Bool)

(declare-fun res!573365 () Bool)

(assert (=> b!843628 (=> (not res!573365) (not e!470787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47720 (_ BitVec 32)) Bool)

(assert (=> b!843628 (= res!573365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843629 () Bool)

(assert (=> b!843629 (= e!470790 tp_is_empty!15747)))

(assert (= (and start!72724 res!573366) b!843624))

(assert (= (and b!843624 res!573363) b!843623))

(assert (= (and b!843623 res!573364) b!843628))

(assert (= (and b!843628 res!573365) b!843626))

(assert (= (and b!843625 condMapEmpty!25220) mapIsEmpty!25220))

(assert (= (and b!843625 (not condMapEmpty!25220)) mapNonEmpty!25220))

(get-info :version)

(assert (= (and mapNonEmpty!25220 ((_ is ValueCellFull!7434) mapValue!25220)) b!843629))

(assert (= (and b!843625 ((_ is ValueCellFull!7434) mapDefault!25220)) b!843627))

(assert (= start!72724 b!843625))

(declare-fun m!786269 () Bool)

(assert (=> start!72724 m!786269))

(declare-fun m!786271 () Bool)

(assert (=> start!72724 m!786271))

(declare-fun m!786273 () Bool)

(assert (=> mapNonEmpty!25220 m!786273))

(declare-fun m!786275 () Bool)

(assert (=> b!843628 m!786275))

(declare-fun m!786277 () Bool)

(assert (=> b!843626 m!786277))

(declare-fun m!786279 () Bool)

(assert (=> b!843624 m!786279))

(check-sat (not mapNonEmpty!25220) (not b!843626) (not b!843624) (not start!72724) tp_is_empty!15747 (not b!843628))
(check-sat)
