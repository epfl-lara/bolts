; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72366 () Bool)

(assert start!72366)

(declare-fun mapIsEmpty!24683 () Bool)

(declare-fun mapRes!24683 () Bool)

(assert (=> mapIsEmpty!24683 mapRes!24683))

(declare-fun b!837920 () Bool)

(declare-fun e!467781 () Bool)

(declare-fun tp_is_empty!15389 () Bool)

(assert (=> b!837920 (= e!467781 tp_is_empty!15389)))

(declare-fun res!569921 () Bool)

(declare-fun e!467779 () Bool)

(assert (=> start!72366 (=> (not res!569921) (not e!467779))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47034 0))(
  ( (array!47035 (arr!22544 (Array (_ BitVec 32) (_ BitVec 64))) (size!22985 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47034)

(assert (=> start!72366 (= res!569921 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22985 _keys!868))))))

(assert (=> start!72366 e!467779))

(assert (=> start!72366 true))

(declare-fun array_inv!17934 (array!47034) Bool)

(assert (=> start!72366 (array_inv!17934 _keys!868)))

(declare-datatypes ((V!25565 0))(
  ( (V!25566 (val!7742 Int)) )
))
(declare-datatypes ((ValueCell!7255 0))(
  ( (ValueCellFull!7255 (v!10163 V!25565)) (EmptyCell!7255) )
))
(declare-datatypes ((array!47036 0))(
  ( (array!47037 (arr!22545 (Array (_ BitVec 32) ValueCell!7255)) (size!22986 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47036)

(declare-fun e!467778 () Bool)

(declare-fun array_inv!17935 (array!47036) Bool)

(assert (=> start!72366 (and (array_inv!17935 _values!688) e!467778)))

(declare-fun b!837921 () Bool)

(assert (=> b!837921 (= e!467779 false)))

(declare-fun lt!380595 () Bool)

(declare-datatypes ((List!16099 0))(
  ( (Nil!16096) (Cons!16095 (h!17226 (_ BitVec 64)) (t!22478 List!16099)) )
))
(declare-fun arrayNoDuplicates!0 (array!47034 (_ BitVec 32) List!16099) Bool)

(assert (=> b!837921 (= lt!380595 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16096))))

(declare-fun b!837922 () Bool)

(declare-fun res!569919 () Bool)

(assert (=> b!837922 (=> (not res!569919) (not e!467779))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47034 (_ BitVec 32)) Bool)

(assert (=> b!837922 (= res!569919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837923 () Bool)

(declare-fun e!467777 () Bool)

(assert (=> b!837923 (= e!467777 tp_is_empty!15389)))

(declare-fun b!837924 () Bool)

(declare-fun res!569922 () Bool)

(assert (=> b!837924 (=> (not res!569922) (not e!467779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837924 (= res!569922 (validMask!0 mask!1196))))

(declare-fun b!837925 () Bool)

(declare-fun res!569920 () Bool)

(assert (=> b!837925 (=> (not res!569920) (not e!467779))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837925 (= res!569920 (and (= (size!22986 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22985 _keys!868) (size!22986 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!24683 () Bool)

(declare-fun tp!47678 () Bool)

(assert (=> mapNonEmpty!24683 (= mapRes!24683 (and tp!47678 e!467781))))

(declare-fun mapRest!24683 () (Array (_ BitVec 32) ValueCell!7255))

(declare-fun mapKey!24683 () (_ BitVec 32))

(declare-fun mapValue!24683 () ValueCell!7255)

(assert (=> mapNonEmpty!24683 (= (arr!22545 _values!688) (store mapRest!24683 mapKey!24683 mapValue!24683))))

(declare-fun b!837926 () Bool)

(assert (=> b!837926 (= e!467778 (and e!467777 mapRes!24683))))

(declare-fun condMapEmpty!24683 () Bool)

(declare-fun mapDefault!24683 () ValueCell!7255)

