; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72330 () Bool)

(assert start!72330)

(declare-fun mapNonEmpty!24629 () Bool)

(declare-fun mapRes!24629 () Bool)

(declare-fun tp!47624 () Bool)

(declare-fun e!467508 () Bool)

(assert (=> mapNonEmpty!24629 (= mapRes!24629 (and tp!47624 e!467508))))

(declare-fun mapKey!24629 () (_ BitVec 32))

(declare-datatypes ((V!25517 0))(
  ( (V!25518 (val!7724 Int)) )
))
(declare-datatypes ((ValueCell!7237 0))(
  ( (ValueCellFull!7237 (v!10145 V!25517)) (EmptyCell!7237) )
))
(declare-fun mapValue!24629 () ValueCell!7237)

(declare-datatypes ((array!46966 0))(
  ( (array!46967 (arr!22510 (Array (_ BitVec 32) ValueCell!7237)) (size!22951 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46966)

(declare-fun mapRest!24629 () (Array (_ BitVec 32) ValueCell!7237))

(assert (=> mapNonEmpty!24629 (= (arr!22510 _values!688) (store mapRest!24629 mapKey!24629 mapValue!24629))))

(declare-fun b!837542 () Bool)

(declare-fun e!467510 () Bool)

(assert (=> b!837542 (= e!467510 false)))

(declare-fun lt!380541 () Bool)

(declare-datatypes ((array!46968 0))(
  ( (array!46969 (arr!22511 (Array (_ BitVec 32) (_ BitVec 64))) (size!22952 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46968)

(declare-datatypes ((List!16087 0))(
  ( (Nil!16084) (Cons!16083 (h!17214 (_ BitVec 64)) (t!22466 List!16087)) )
))
(declare-fun arrayNoDuplicates!0 (array!46968 (_ BitVec 32) List!16087) Bool)

(assert (=> b!837542 (= lt!380541 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16084))))

(declare-fun b!837543 () Bool)

(declare-fun res!569703 () Bool)

(assert (=> b!837543 (=> (not res!569703) (not e!467510))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46968 (_ BitVec 32)) Bool)

(assert (=> b!837543 (= res!569703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837544 () Bool)

(declare-fun e!467509 () Bool)

(declare-fun e!467511 () Bool)

(assert (=> b!837544 (= e!467509 (and e!467511 mapRes!24629))))

(declare-fun condMapEmpty!24629 () Bool)

(declare-fun mapDefault!24629 () ValueCell!7237)

