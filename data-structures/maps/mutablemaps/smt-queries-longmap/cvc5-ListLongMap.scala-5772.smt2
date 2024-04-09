; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74562 () Bool)

(assert start!74562)

(declare-fun b_free!15223 () Bool)

(declare-fun b_next!15223 () Bool)

(assert (=> start!74562 (= b_free!15223 (not b_next!15223))))

(declare-fun tp!53352 () Bool)

(declare-fun b_and!25117 () Bool)

(assert (=> start!74562 (= tp!53352 b_and!25117)))

(declare-fun mapNonEmpty!27816 () Bool)

(declare-fun mapRes!27816 () Bool)

(declare-fun tp!53351 () Bool)

(declare-fun e!488658 () Bool)

(assert (=> mapNonEmpty!27816 (= mapRes!27816 (and tp!53351 e!488658))))

(declare-fun mapKey!27816 () (_ BitVec 32))

(declare-datatypes ((V!28337 0))(
  ( (V!28338 (val!8781 Int)) )
))
(declare-datatypes ((ValueCell!8294 0))(
  ( (ValueCellFull!8294 (v!11217 V!28337)) (EmptyCell!8294) )
))
(declare-fun mapRest!27816 () (Array (_ BitVec 32) ValueCell!8294))

(declare-datatypes ((array!51044 0))(
  ( (array!51045 (arr!24544 (Array (_ BitVec 32) ValueCell!8294)) (size!24985 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51044)

(declare-fun mapValue!27816 () ValueCell!8294)

(assert (=> mapNonEmpty!27816 (= (arr!24544 _values!688) (store mapRest!27816 mapKey!27816 mapValue!27816))))

(declare-fun b!877865 () Bool)

(declare-fun res!596486 () Bool)

(declare-fun e!488657 () Bool)

(assert (=> b!877865 (=> (not res!596486) (not e!488657))))

(declare-datatypes ((array!51046 0))(
  ( (array!51047 (arr!24545 (Array (_ BitVec 32) (_ BitVec 64))) (size!24986 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51046)

(declare-datatypes ((List!17512 0))(
  ( (Nil!17509) (Cons!17508 (h!18639 (_ BitVec 64)) (t!24609 List!17512)) )
))
(declare-fun arrayNoDuplicates!0 (array!51046 (_ BitVec 32) List!17512) Bool)

(assert (=> b!877865 (= res!596486 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17509))))

(declare-fun b!877866 () Bool)

(declare-fun res!596492 () Bool)

(assert (=> b!877866 (=> (not res!596492) (not e!488657))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!877866 (= res!596492 (validMask!0 mask!1196))))

(declare-fun b!877867 () Bool)

(declare-fun e!488656 () Bool)

(declare-fun e!488654 () Bool)

(assert (=> b!877867 (= e!488656 (and e!488654 mapRes!27816))))

(declare-fun condMapEmpty!27816 () Bool)

(declare-fun mapDefault!27816 () ValueCell!8294)

