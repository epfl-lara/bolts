; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72784 () Bool)

(assert start!72784)

(declare-fun b!844253 () Bool)

(declare-fun e!471239 () Bool)

(declare-fun e!471238 () Bool)

(declare-fun mapRes!25310 () Bool)

(assert (=> b!844253 (= e!471239 (and e!471238 mapRes!25310))))

(declare-fun condMapEmpty!25310 () Bool)

(declare-datatypes ((V!26123 0))(
  ( (V!26124 (val!7951 Int)) )
))
(declare-datatypes ((ValueCell!7464 0))(
  ( (ValueCellFull!7464 (v!10372 V!26123)) (EmptyCell!7464) )
))
(declare-datatypes ((array!47830 0))(
  ( (array!47831 (arr!22942 (Array (_ BitVec 32) ValueCell!7464)) (size!23383 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47830)

(declare-fun mapDefault!25310 () ValueCell!7464)

(assert (=> b!844253 (= condMapEmpty!25310 (= (arr!22942 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7464)) mapDefault!25310)))))

(declare-fun mapNonEmpty!25310 () Bool)

(declare-fun tp!48629 () Bool)

(declare-fun e!471236 () Bool)

(assert (=> mapNonEmpty!25310 (= mapRes!25310 (and tp!48629 e!471236))))

(declare-fun mapRest!25310 () (Array (_ BitVec 32) ValueCell!7464))

(declare-fun mapKey!25310 () (_ BitVec 32))

(declare-fun mapValue!25310 () ValueCell!7464)

(assert (=> mapNonEmpty!25310 (= (arr!22942 _values!688) (store mapRest!25310 mapKey!25310 mapValue!25310))))

(declare-fun b!844254 () Bool)

(declare-fun res!573723 () Bool)

(declare-fun e!471240 () Bool)

(assert (=> b!844254 (=> (not res!573723) (not e!471240))))

(declare-datatypes ((array!47832 0))(
  ( (array!47833 (arr!22943 (Array (_ BitVec 32) (_ BitVec 64))) (size!23384 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47832)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47832 (_ BitVec 32)) Bool)

(assert (=> b!844254 (= res!573723 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844255 () Bool)

(declare-fun res!573726 () Bool)

(assert (=> b!844255 (=> (not res!573726) (not e!471240))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844255 (= res!573726 (and (= (size!23383 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23384 _keys!868) (size!23383 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844256 () Bool)

(assert (=> b!844256 (= e!471240 false)))

(declare-fun lt!381222 () Bool)

(declare-datatypes ((List!16337 0))(
  ( (Nil!16334) (Cons!16333 (h!17464 (_ BitVec 64)) (t!22716 List!16337)) )
))
(declare-fun arrayNoDuplicates!0 (array!47832 (_ BitVec 32) List!16337) Bool)

(assert (=> b!844256 (= lt!381222 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16334))))

(declare-fun b!844257 () Bool)

(declare-fun tp_is_empty!15807 () Bool)

(assert (=> b!844257 (= e!471236 tp_is_empty!15807)))

(declare-fun b!844258 () Bool)

(declare-fun res!573724 () Bool)

(assert (=> b!844258 (=> (not res!573724) (not e!471240))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844258 (= res!573724 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25310 () Bool)

(assert (=> mapIsEmpty!25310 mapRes!25310))

(declare-fun res!573725 () Bool)

(assert (=> start!72784 (=> (not res!573725) (not e!471240))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72784 (= res!573725 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23384 _keys!868))))))

(assert (=> start!72784 e!471240))

(assert (=> start!72784 true))

(declare-fun array_inv!18226 (array!47832) Bool)

(assert (=> start!72784 (array_inv!18226 _keys!868)))

(declare-fun array_inv!18227 (array!47830) Bool)

(assert (=> start!72784 (and (array_inv!18227 _values!688) e!471239)))

(declare-fun b!844259 () Bool)

(assert (=> b!844259 (= e!471238 tp_is_empty!15807)))

(assert (= (and start!72784 res!573725) b!844258))

(assert (= (and b!844258 res!573724) b!844255))

(assert (= (and b!844255 res!573726) b!844254))

(assert (= (and b!844254 res!573723) b!844256))

(assert (= (and b!844253 condMapEmpty!25310) mapIsEmpty!25310))

(assert (= (and b!844253 (not condMapEmpty!25310)) mapNonEmpty!25310))

(get-info :version)

(assert (= (and mapNonEmpty!25310 ((_ is ValueCellFull!7464) mapValue!25310)) b!844257))

(assert (= (and b!844253 ((_ is ValueCellFull!7464) mapDefault!25310)) b!844259))

(assert (= start!72784 b!844253))

(declare-fun m!786629 () Bool)

(assert (=> b!844258 m!786629))

(declare-fun m!786631 () Bool)

(assert (=> b!844254 m!786631))

(declare-fun m!786633 () Bool)

(assert (=> mapNonEmpty!25310 m!786633))

(declare-fun m!786635 () Bool)

(assert (=> start!72784 m!786635))

(declare-fun m!786637 () Bool)

(assert (=> start!72784 m!786637))

(declare-fun m!786639 () Bool)

(assert (=> b!844256 m!786639))

(check-sat tp_is_empty!15807 (not start!72784) (not mapNonEmpty!25310) (not b!844258) (not b!844254) (not b!844256))
(check-sat)
