; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72852 () Bool)

(assert start!72852)

(declare-fun b!844967 () Bool)

(declare-fun res!574131 () Bool)

(declare-fun e!471750 () Bool)

(assert (=> b!844967 (=> (not res!574131) (not e!471750))))

(declare-datatypes ((array!47954 0))(
  ( (array!47955 (arr!23004 (Array (_ BitVec 32) (_ BitVec 64))) (size!23445 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47954)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47954 (_ BitVec 32)) Bool)

(assert (=> b!844967 (= res!574131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!25412 () Bool)

(declare-fun mapRes!25412 () Bool)

(assert (=> mapIsEmpty!25412 mapRes!25412))

(declare-fun b!844968 () Bool)

(declare-fun e!471748 () Bool)

(declare-fun tp_is_empty!15875 () Bool)

(assert (=> b!844968 (= e!471748 tp_is_empty!15875)))

(declare-fun res!574133 () Bool)

(assert (=> start!72852 (=> (not res!574133) (not e!471750))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72852 (= res!574133 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23445 _keys!868))))))

(assert (=> start!72852 e!471750))

(assert (=> start!72852 true))

(declare-fun array_inv!18268 (array!47954) Bool)

(assert (=> start!72852 (array_inv!18268 _keys!868)))

(declare-datatypes ((V!26213 0))(
  ( (V!26214 (val!7985 Int)) )
))
(declare-datatypes ((ValueCell!7498 0))(
  ( (ValueCellFull!7498 (v!10406 V!26213)) (EmptyCell!7498) )
))
(declare-datatypes ((array!47956 0))(
  ( (array!47957 (arr!23005 (Array (_ BitVec 32) ValueCell!7498)) (size!23446 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47956)

(declare-fun e!471747 () Bool)

(declare-fun array_inv!18269 (array!47956) Bool)

(assert (=> start!72852 (and (array_inv!18269 _values!688) e!471747)))

(declare-fun b!844969 () Bool)

(assert (=> b!844969 (= e!471750 false)))

(declare-fun lt!381324 () Bool)

(declare-datatypes ((List!16358 0))(
  ( (Nil!16355) (Cons!16354 (h!17485 (_ BitVec 64)) (t!22737 List!16358)) )
))
(declare-fun arrayNoDuplicates!0 (array!47954 (_ BitVec 32) List!16358) Bool)

(assert (=> b!844969 (= lt!381324 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16355))))

(declare-fun b!844970 () Bool)

(assert (=> b!844970 (= e!471747 (and e!471748 mapRes!25412))))

(declare-fun condMapEmpty!25412 () Bool)

(declare-fun mapDefault!25412 () ValueCell!7498)

