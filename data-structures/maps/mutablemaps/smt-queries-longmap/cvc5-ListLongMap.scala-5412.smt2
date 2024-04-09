; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72254 () Bool)

(assert start!72254)

(declare-fun mapIsEmpty!24551 () Bool)

(declare-fun mapRes!24551 () Bool)

(assert (=> mapIsEmpty!24551 mapRes!24551))

(declare-fun b!836943 () Bool)

(declare-fun res!569356 () Bool)

(declare-fun e!467089 () Bool)

(assert (=> b!836943 (=> (not res!569356) (not e!467089))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!25457 0))(
  ( (V!25458 (val!7701 Int)) )
))
(declare-datatypes ((ValueCell!7214 0))(
  ( (ValueCellFull!7214 (v!10121 V!25457)) (EmptyCell!7214) )
))
(declare-datatypes ((array!46880 0))(
  ( (array!46881 (arr!22470 (Array (_ BitVec 32) ValueCell!7214)) (size!22911 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46880)

(declare-datatypes ((array!46882 0))(
  ( (array!46883 (arr!22471 (Array (_ BitVec 32) (_ BitVec 64))) (size!22912 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46882)

(assert (=> b!836943 (= res!569356 (and (= (size!22911 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22912 _keys!868) (size!22911 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!836944 () Bool)

(declare-fun res!569353 () Bool)

(assert (=> b!836944 (=> (not res!569353) (not e!467089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46882 (_ BitVec 32)) Bool)

(assert (=> b!836944 (= res!569353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!836945 () Bool)

(assert (=> b!836945 (= e!467089 (and (bvsle #b00000000000000000000000000000000 (size!22912 _keys!868)) (bvsge (size!22912 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!836946 () Bool)

(declare-fun e!467088 () Bool)

(declare-fun e!467090 () Bool)

(assert (=> b!836946 (= e!467088 (and e!467090 mapRes!24551))))

(declare-fun condMapEmpty!24551 () Bool)

(declare-fun mapDefault!24551 () ValueCell!7214)

