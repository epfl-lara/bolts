; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72806 () Bool)

(assert start!72806)

(declare-fun b!844484 () Bool)

(declare-fun res!573856 () Bool)

(declare-fun e!471404 () Bool)

(assert (=> b!844484 (=> (not res!573856) (not e!471404))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844484 (= res!573856 (validMask!0 mask!1196))))

(declare-fun b!844485 () Bool)

(declare-fun res!573857 () Bool)

(assert (=> b!844485 (=> (not res!573857) (not e!471404))))

(declare-datatypes ((array!47874 0))(
  ( (array!47875 (arr!22964 (Array (_ BitVec 32) (_ BitVec 64))) (size!23405 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47874)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47874 (_ BitVec 32)) Bool)

(assert (=> b!844485 (= res!573857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844486 () Bool)

(declare-fun res!573855 () Bool)

(assert (=> b!844486 (=> (not res!573855) (not e!471404))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26153 0))(
  ( (V!26154 (val!7962 Int)) )
))
(declare-datatypes ((ValueCell!7475 0))(
  ( (ValueCellFull!7475 (v!10383 V!26153)) (EmptyCell!7475) )
))
(declare-datatypes ((array!47876 0))(
  ( (array!47877 (arr!22965 (Array (_ BitVec 32) ValueCell!7475)) (size!23406 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47876)

(assert (=> b!844486 (= res!573855 (and (= (size!23406 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23405 _keys!868) (size!23406 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844487 () Bool)

(assert (=> b!844487 (= e!471404 false)))

(declare-fun lt!381255 () Bool)

(declare-datatypes ((List!16346 0))(
  ( (Nil!16343) (Cons!16342 (h!17473 (_ BitVec 64)) (t!22725 List!16346)) )
))
(declare-fun arrayNoDuplicates!0 (array!47874 (_ BitVec 32) List!16346) Bool)

(assert (=> b!844487 (= lt!381255 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16343))))

(declare-fun b!844488 () Bool)

(declare-fun e!471402 () Bool)

(declare-fun tp_is_empty!15829 () Bool)

(assert (=> b!844488 (= e!471402 tp_is_empty!15829)))

(declare-fun b!844489 () Bool)

(declare-fun e!471401 () Bool)

(assert (=> b!844489 (= e!471401 tp_is_empty!15829)))

(declare-fun mapIsEmpty!25343 () Bool)

(declare-fun mapRes!25343 () Bool)

(assert (=> mapIsEmpty!25343 mapRes!25343))

(declare-fun mapNonEmpty!25343 () Bool)

(declare-fun tp!48662 () Bool)

(assert (=> mapNonEmpty!25343 (= mapRes!25343 (and tp!48662 e!471401))))

(declare-fun mapKey!25343 () (_ BitVec 32))

(declare-fun mapValue!25343 () ValueCell!7475)

(declare-fun mapRest!25343 () (Array (_ BitVec 32) ValueCell!7475))

(assert (=> mapNonEmpty!25343 (= (arr!22965 _values!688) (store mapRest!25343 mapKey!25343 mapValue!25343))))

(declare-fun b!844490 () Bool)

(declare-fun e!471405 () Bool)

(assert (=> b!844490 (= e!471405 (and e!471402 mapRes!25343))))

(declare-fun condMapEmpty!25343 () Bool)

(declare-fun mapDefault!25343 () ValueCell!7475)

