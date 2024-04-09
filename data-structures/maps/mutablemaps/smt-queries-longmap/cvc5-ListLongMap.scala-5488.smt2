; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72740 () Bool)

(assert start!72740)

(declare-fun res!573459 () Bool)

(declare-fun e!470906 () Bool)

(assert (=> start!72740 (=> (not res!573459) (not e!470906))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47750 0))(
  ( (array!47751 (arr!22902 (Array (_ BitVec 32) (_ BitVec 64))) (size!23343 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47750)

(assert (=> start!72740 (= res!573459 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23343 _keys!868))))))

(assert (=> start!72740 e!470906))

(assert (=> start!72740 true))

(declare-fun array_inv!18198 (array!47750) Bool)

(assert (=> start!72740 (array_inv!18198 _keys!868)))

(declare-datatypes ((V!26065 0))(
  ( (V!26066 (val!7929 Int)) )
))
(declare-datatypes ((ValueCell!7442 0))(
  ( (ValueCellFull!7442 (v!10350 V!26065)) (EmptyCell!7442) )
))
(declare-datatypes ((array!47752 0))(
  ( (array!47753 (arr!22903 (Array (_ BitVec 32) ValueCell!7442)) (size!23344 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47752)

(declare-fun e!470909 () Bool)

(declare-fun array_inv!18199 (array!47752) Bool)

(assert (=> start!72740 (and (array_inv!18199 _values!688) e!470909)))

(declare-fun mapNonEmpty!25244 () Bool)

(declare-fun mapRes!25244 () Bool)

(declare-fun tp!48563 () Bool)

(declare-fun e!470908 () Bool)

(assert (=> mapNonEmpty!25244 (= mapRes!25244 (and tp!48563 e!470908))))

(declare-fun mapValue!25244 () ValueCell!7442)

(declare-fun mapKey!25244 () (_ BitVec 32))

(declare-fun mapRest!25244 () (Array (_ BitVec 32) ValueCell!7442))

(assert (=> mapNonEmpty!25244 (= (arr!22903 _values!688) (store mapRest!25244 mapKey!25244 mapValue!25244))))

(declare-fun b!843791 () Bool)

(declare-fun res!573460 () Bool)

(assert (=> b!843791 (=> (not res!573460) (not e!470906))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47750 (_ BitVec 32)) Bool)

(assert (=> b!843791 (= res!573460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843792 () Bool)

(declare-fun e!470910 () Bool)

(declare-fun tp_is_empty!15763 () Bool)

(assert (=> b!843792 (= e!470910 tp_is_empty!15763)))

(declare-fun b!843793 () Bool)

(assert (=> b!843793 (= e!470908 tp_is_empty!15763)))

(declare-fun b!843794 () Bool)

(assert (=> b!843794 (= e!470906 false)))

(declare-fun lt!381156 () Bool)

(declare-datatypes ((List!16323 0))(
  ( (Nil!16320) (Cons!16319 (h!17450 (_ BitVec 64)) (t!22702 List!16323)) )
))
(declare-fun arrayNoDuplicates!0 (array!47750 (_ BitVec 32) List!16323) Bool)

(assert (=> b!843794 (= lt!381156 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16320))))

(declare-fun b!843795 () Bool)

(declare-fun res!573461 () Bool)

(assert (=> b!843795 (=> (not res!573461) (not e!470906))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843795 (= res!573461 (and (= (size!23344 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23343 _keys!868) (size!23344 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25244 () Bool)

(assert (=> mapIsEmpty!25244 mapRes!25244))

(declare-fun b!843796 () Bool)

(assert (=> b!843796 (= e!470909 (and e!470910 mapRes!25244))))

(declare-fun condMapEmpty!25244 () Bool)

(declare-fun mapDefault!25244 () ValueCell!7442)

