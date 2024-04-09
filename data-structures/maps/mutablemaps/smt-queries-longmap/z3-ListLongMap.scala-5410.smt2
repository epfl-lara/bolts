; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72244 () Bool)

(assert start!72244)

(declare-fun b!836846 () Bool)

(declare-fun res!569302 () Bool)

(declare-fun e!467014 () Bool)

(assert (=> b!836846 (=> (not res!569302) (not e!467014))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!836846 (= res!569302 (validMask!0 mask!1196))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun b!836847 () Bool)

(declare-datatypes ((array!46862 0))(
  ( (array!46863 (arr!22461 (Array (_ BitVec 32) (_ BitVec 64))) (size!22902 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46862)

(declare-datatypes ((V!25443 0))(
  ( (V!25444 (val!7696 Int)) )
))
(declare-datatypes ((ValueCell!7209 0))(
  ( (ValueCellFull!7209 (v!10116 V!25443)) (EmptyCell!7209) )
))
(declare-datatypes ((array!46864 0))(
  ( (array!46865 (arr!22462 (Array (_ BitVec 32) ValueCell!7209)) (size!22903 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46864)

(assert (=> b!836847 (= e!467014 (and (= (size!22903 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22902 _keys!868) (size!22903 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011) (= (size!22902 _keys!868) (bvadd #b00000000000000000000000000000001 mask!1196)) (bvsgt #b00000000000000000000000000000000 (size!22902 _keys!868))))))

(declare-fun b!836848 () Bool)

(declare-fun e!467016 () Bool)

(declare-fun tp_is_empty!15297 () Bool)

(assert (=> b!836848 (= e!467016 tp_is_empty!15297)))

(declare-fun mapIsEmpty!24536 () Bool)

(declare-fun mapRes!24536 () Bool)

(assert (=> mapIsEmpty!24536 mapRes!24536))

(declare-fun res!569301 () Bool)

(assert (=> start!72244 (=> (not res!569301) (not e!467014))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72244 (= res!569301 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22902 _keys!868))))))

(assert (=> start!72244 e!467014))

(assert (=> start!72244 true))

(declare-fun array_inv!17884 (array!46862) Bool)

(assert (=> start!72244 (array_inv!17884 _keys!868)))

(declare-fun e!467013 () Bool)

(declare-fun array_inv!17885 (array!46864) Bool)

(assert (=> start!72244 (and (array_inv!17885 _values!688) e!467013)))

(declare-fun mapNonEmpty!24536 () Bool)

(declare-fun tp!47531 () Bool)

(assert (=> mapNonEmpty!24536 (= mapRes!24536 (and tp!47531 e!467016))))

(declare-fun mapKey!24536 () (_ BitVec 32))

(declare-fun mapRest!24536 () (Array (_ BitVec 32) ValueCell!7209))

(declare-fun mapValue!24536 () ValueCell!7209)

(assert (=> mapNonEmpty!24536 (= (arr!22462 _values!688) (store mapRest!24536 mapKey!24536 mapValue!24536))))

(declare-fun b!836849 () Bool)

(declare-fun e!467015 () Bool)

(assert (=> b!836849 (= e!467015 tp_is_empty!15297)))

(declare-fun b!836850 () Bool)

(assert (=> b!836850 (= e!467013 (and e!467015 mapRes!24536))))

(declare-fun condMapEmpty!24536 () Bool)

(declare-fun mapDefault!24536 () ValueCell!7209)

(assert (=> b!836850 (= condMapEmpty!24536 (= (arr!22462 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7209)) mapDefault!24536)))))

(assert (= (and start!72244 res!569301) b!836846))

(assert (= (and b!836846 res!569302) b!836847))

(assert (= (and b!836850 condMapEmpty!24536) mapIsEmpty!24536))

(assert (= (and b!836850 (not condMapEmpty!24536)) mapNonEmpty!24536))

(get-info :version)

(assert (= (and mapNonEmpty!24536 ((_ is ValueCellFull!7209) mapValue!24536)) b!836848))

(assert (= (and b!836850 ((_ is ValueCellFull!7209) mapDefault!24536)) b!836849))

(assert (= start!72244 b!836850))

(declare-fun m!782005 () Bool)

(assert (=> b!836846 m!782005))

(declare-fun m!782007 () Bool)

(assert (=> start!72244 m!782007))

(declare-fun m!782009 () Bool)

(assert (=> start!72244 m!782009))

(declare-fun m!782011 () Bool)

(assert (=> mapNonEmpty!24536 m!782011))

(check-sat (not start!72244) (not b!836846) (not mapNonEmpty!24536) tp_is_empty!15297)
(check-sat)
