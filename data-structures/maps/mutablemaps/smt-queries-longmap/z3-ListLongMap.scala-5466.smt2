; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72610 () Bool)

(assert start!72610)

(declare-fun mapIsEmpty!25049 () Bool)

(declare-fun mapRes!25049 () Bool)

(assert (=> mapIsEmpty!25049 mapRes!25049))

(declare-fun b!842426 () Bool)

(declare-fun res!572682 () Bool)

(declare-fun e!469933 () Bool)

(assert (=> b!842426 (=> (not res!572682) (not e!469933))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47508 0))(
  ( (array!47509 (arr!22781 (Array (_ BitVec 32) (_ BitVec 64))) (size!23222 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47508)

(declare-datatypes ((V!25891 0))(
  ( (V!25892 (val!7864 Int)) )
))
(declare-datatypes ((ValueCell!7377 0))(
  ( (ValueCellFull!7377 (v!10285 V!25891)) (EmptyCell!7377) )
))
(declare-datatypes ((array!47510 0))(
  ( (array!47511 (arr!22782 (Array (_ BitVec 32) ValueCell!7377)) (size!23223 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47510)

(assert (=> b!842426 (= res!572682 (and (= (size!23223 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23222 _keys!868) (size!23223 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842427 () Bool)

(declare-fun res!572679 () Bool)

(assert (=> b!842427 (=> (not res!572679) (not e!469933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842427 (= res!572679 (validMask!0 mask!1196))))

(declare-fun b!842428 () Bool)

(declare-fun res!572680 () Bool)

(assert (=> b!842428 (=> (not res!572680) (not e!469933))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47508 (_ BitVec 32)) Bool)

(assert (=> b!842428 (= res!572680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25049 () Bool)

(declare-fun tp!48368 () Bool)

(declare-fun e!469934 () Bool)

(assert (=> mapNonEmpty!25049 (= mapRes!25049 (and tp!48368 e!469934))))

(declare-fun mapValue!25049 () ValueCell!7377)

(declare-fun mapRest!25049 () (Array (_ BitVec 32) ValueCell!7377))

(declare-fun mapKey!25049 () (_ BitVec 32))

(assert (=> mapNonEmpty!25049 (= (arr!22782 _values!688) (store mapRest!25049 mapKey!25049 mapValue!25049))))

(declare-fun b!842429 () Bool)

(declare-fun e!469931 () Bool)

(declare-fun e!469935 () Bool)

(assert (=> b!842429 (= e!469931 (and e!469935 mapRes!25049))))

(declare-fun condMapEmpty!25049 () Bool)

(declare-fun mapDefault!25049 () ValueCell!7377)

(assert (=> b!842429 (= condMapEmpty!25049 (= (arr!22782 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7377)) mapDefault!25049)))))

(declare-fun res!572681 () Bool)

(assert (=> start!72610 (=> (not res!572681) (not e!469933))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72610 (= res!572681 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23222 _keys!868))))))

(assert (=> start!72610 e!469933))

(assert (=> start!72610 true))

(declare-fun array_inv!18110 (array!47508) Bool)

(assert (=> start!72610 (array_inv!18110 _keys!868)))

(declare-fun array_inv!18111 (array!47510) Bool)

(assert (=> start!72610 (and (array_inv!18111 _values!688) e!469931)))

(declare-fun b!842430 () Bool)

(declare-fun tp_is_empty!15633 () Bool)

(assert (=> b!842430 (= e!469935 tp_is_empty!15633)))

(declare-fun b!842431 () Bool)

(assert (=> b!842431 (= e!469934 tp_is_empty!15633)))

(declare-fun b!842432 () Bool)

(assert (=> b!842432 (= e!469933 false)))

(declare-fun lt!380961 () Bool)

(declare-datatypes ((List!16277 0))(
  ( (Nil!16274) (Cons!16273 (h!17404 (_ BitVec 64)) (t!22656 List!16277)) )
))
(declare-fun arrayNoDuplicates!0 (array!47508 (_ BitVec 32) List!16277) Bool)

(assert (=> b!842432 (= lt!380961 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16274))))

(assert (= (and start!72610 res!572681) b!842427))

(assert (= (and b!842427 res!572679) b!842426))

(assert (= (and b!842426 res!572682) b!842428))

(assert (= (and b!842428 res!572680) b!842432))

(assert (= (and b!842429 condMapEmpty!25049) mapIsEmpty!25049))

(assert (= (and b!842429 (not condMapEmpty!25049)) mapNonEmpty!25049))

(get-info :version)

(assert (= (and mapNonEmpty!25049 ((_ is ValueCellFull!7377) mapValue!25049)) b!842431))

(assert (= (and b!842429 ((_ is ValueCellFull!7377) mapDefault!25049)) b!842430))

(assert (= start!72610 b!842429))

(declare-fun m!785585 () Bool)

(assert (=> b!842427 m!785585))

(declare-fun m!785587 () Bool)

(assert (=> mapNonEmpty!25049 m!785587))

(declare-fun m!785589 () Bool)

(assert (=> b!842428 m!785589))

(declare-fun m!785591 () Bool)

(assert (=> b!842432 m!785591))

(declare-fun m!785593 () Bool)

(assert (=> start!72610 m!785593))

(declare-fun m!785595 () Bool)

(assert (=> start!72610 m!785595))

(check-sat (not b!842428) (not mapNonEmpty!25049) (not b!842432) (not start!72610) (not b!842427) tp_is_empty!15633)
(check-sat)
