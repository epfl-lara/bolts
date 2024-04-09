; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72250 () Bool)

(assert start!72250)

(declare-fun b!836901 () Bool)

(declare-fun res!569329 () Bool)

(declare-fun e!467060 () Bool)

(assert (=> b!836901 (=> (not res!569329) (not e!467060))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836901 (= res!569329 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24545 () Bool)

(declare-fun mapRes!24545 () Bool)

(declare-fun tp!47540 () Bool)

(declare-fun e!467058 () Bool)

(assert (=> mapNonEmpty!24545 (= mapRes!24545 (and tp!47540 e!467058))))

(declare-fun mapKey!24545 () (_ BitVec 32))

(declare-datatypes ((V!25451 0))(
  ( (V!25452 (val!7699 Int)) )
))
(declare-datatypes ((ValueCell!7212 0))(
  ( (ValueCellFull!7212 (v!10119 V!25451)) (EmptyCell!7212) )
))
(declare-fun mapRest!24545 () (Array (_ BitVec 32) ValueCell!7212))

(declare-fun mapValue!24545 () ValueCell!7212)

(declare-datatypes ((array!46874 0))(
  ( (array!46875 (arr!22467 (Array (_ BitVec 32) ValueCell!7212)) (size!22908 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46874)

(assert (=> mapNonEmpty!24545 (= (arr!22467 _values!688) (store mapRest!24545 mapKey!24545 mapValue!24545))))

(declare-fun b!836902 () Bool)

(declare-fun e!467061 () Bool)

(declare-fun tp_is_empty!15303 () Bool)

(assert (=> b!836902 (= e!467061 tp_is_empty!15303)))

(declare-fun b!836903 () Bool)

(declare-datatypes ((array!46876 0))(
  ( (array!46877 (arr!22468 (Array (_ BitVec 32) (_ BitVec 64))) (size!22909 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46876)

(assert (=> b!836903 (= e!467060 (bvsgt #b00000000000000000000000000000000 (size!22909 _keys!868)))))

(declare-fun b!836904 () Bool)

(declare-fun res!569330 () Bool)

(assert (=> b!836904 (=> (not res!569330) (not e!467060))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!836904 (= res!569330 (and (= (size!22908 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22909 _keys!868) (size!22908 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!836905 () Bool)

(declare-fun res!569331 () Bool)

(assert (=> b!836905 (=> (not res!569331) (not e!467060))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46876 (_ BitVec 32)) Bool)

(assert (=> b!836905 (= res!569331 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!24545 () Bool)

(assert (=> mapIsEmpty!24545 mapRes!24545))

(declare-fun b!836906 () Bool)

(assert (=> b!836906 (= e!467058 tp_is_empty!15303)))

(declare-fun b!836907 () Bool)

(declare-fun e!467059 () Bool)

(assert (=> b!836907 (= e!467059 (and e!467061 mapRes!24545))))

(declare-fun condMapEmpty!24545 () Bool)

(declare-fun mapDefault!24545 () ValueCell!7212)

(assert (=> b!836907 (= condMapEmpty!24545 (= (arr!22467 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7212)) mapDefault!24545)))))

(declare-fun res!569332 () Bool)

(assert (=> start!72250 (=> (not res!569332) (not e!467060))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72250 (= res!569332 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22909 _keys!868))))))

(assert (=> start!72250 e!467060))

(assert (=> start!72250 true))

(declare-fun array_inv!17890 (array!46876) Bool)

(assert (=> start!72250 (array_inv!17890 _keys!868)))

(declare-fun array_inv!17891 (array!46874) Bool)

(assert (=> start!72250 (and (array_inv!17891 _values!688) e!467059)))

(assert (= (and start!72250 res!569332) b!836901))

(assert (= (and b!836901 res!569329) b!836904))

(assert (= (and b!836904 res!569330) b!836905))

(assert (= (and b!836905 res!569331) b!836903))

(assert (= (and b!836907 condMapEmpty!24545) mapIsEmpty!24545))

(assert (= (and b!836907 (not condMapEmpty!24545)) mapNonEmpty!24545))

(get-info :version)

(assert (= (and mapNonEmpty!24545 ((_ is ValueCellFull!7212) mapValue!24545)) b!836906))

(assert (= (and b!836907 ((_ is ValueCellFull!7212) mapDefault!24545)) b!836902))

(assert (= start!72250 b!836907))

(declare-fun m!782031 () Bool)

(assert (=> b!836901 m!782031))

(declare-fun m!782033 () Bool)

(assert (=> mapNonEmpty!24545 m!782033))

(declare-fun m!782035 () Bool)

(assert (=> b!836905 m!782035))

(declare-fun m!782037 () Bool)

(assert (=> start!72250 m!782037))

(declare-fun m!782039 () Bool)

(assert (=> start!72250 m!782039))

(check-sat (not b!836901) (not start!72250) (not b!836905) tp_is_empty!15303 (not mapNonEmpty!24545))
(check-sat)
