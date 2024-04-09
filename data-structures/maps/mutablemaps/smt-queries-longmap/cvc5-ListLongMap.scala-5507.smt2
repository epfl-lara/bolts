; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72854 () Bool)

(assert start!72854)

(declare-fun b!844988 () Bool)

(declare-fun e!471761 () Bool)

(declare-fun tp_is_empty!15877 () Bool)

(assert (=> b!844988 (= e!471761 tp_is_empty!15877)))

(declare-fun mapIsEmpty!25415 () Bool)

(declare-fun mapRes!25415 () Bool)

(assert (=> mapIsEmpty!25415 mapRes!25415))

(declare-fun res!574146 () Bool)

(declare-fun e!471764 () Bool)

(assert (=> start!72854 (=> (not res!574146) (not e!471764))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47958 0))(
  ( (array!47959 (arr!23006 (Array (_ BitVec 32) (_ BitVec 64))) (size!23447 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47958)

(assert (=> start!72854 (= res!574146 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23447 _keys!868))))))

(assert (=> start!72854 e!471764))

(assert (=> start!72854 true))

(declare-fun array_inv!18270 (array!47958) Bool)

(assert (=> start!72854 (array_inv!18270 _keys!868)))

(declare-datatypes ((V!26217 0))(
  ( (V!26218 (val!7986 Int)) )
))
(declare-datatypes ((ValueCell!7499 0))(
  ( (ValueCellFull!7499 (v!10407 V!26217)) (EmptyCell!7499) )
))
(declare-datatypes ((array!47960 0))(
  ( (array!47961 (arr!23007 (Array (_ BitVec 32) ValueCell!7499)) (size!23448 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47960)

(declare-fun e!471762 () Bool)

(declare-fun array_inv!18271 (array!47960) Bool)

(assert (=> start!72854 (and (array_inv!18271 _values!688) e!471762)))

(declare-fun b!844989 () Bool)

(assert (=> b!844989 (= e!471764 false)))

(declare-fun lt!381327 () Bool)

(declare-datatypes ((List!16359 0))(
  ( (Nil!16356) (Cons!16355 (h!17486 (_ BitVec 64)) (t!22738 List!16359)) )
))
(declare-fun arrayNoDuplicates!0 (array!47958 (_ BitVec 32) List!16359) Bool)

(assert (=> b!844989 (= lt!381327 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16356))))

(declare-fun b!844990 () Bool)

(declare-fun res!574145 () Bool)

(assert (=> b!844990 (=> (not res!574145) (not e!471764))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844990 (= res!574145 (validMask!0 mask!1196))))

(declare-fun b!844991 () Bool)

(declare-fun res!574144 () Bool)

(assert (=> b!844991 (=> (not res!574144) (not e!471764))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844991 (= res!574144 (and (= (size!23448 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23447 _keys!868) (size!23448 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844992 () Bool)

(declare-fun res!574143 () Bool)

(assert (=> b!844992 (=> (not res!574143) (not e!471764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47958 (_ BitVec 32)) Bool)

(assert (=> b!844992 (= res!574143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!844993 () Bool)

(assert (=> b!844993 (= e!471762 (and e!471761 mapRes!25415))))

(declare-fun condMapEmpty!25415 () Bool)

(declare-fun mapDefault!25415 () ValueCell!7499)

