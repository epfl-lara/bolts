; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72642 () Bool)

(assert start!72642)

(declare-fun b!842762 () Bool)

(declare-fun e!470172 () Bool)

(assert (=> b!842762 (= e!470172 false)))

(declare-fun lt!381009 () Bool)

(declare-datatypes ((array!47572 0))(
  ( (array!47573 (arr!22813 (Array (_ BitVec 32) (_ BitVec 64))) (size!23254 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47572)

(declare-datatypes ((List!16287 0))(
  ( (Nil!16284) (Cons!16283 (h!17414 (_ BitVec 64)) (t!22666 List!16287)) )
))
(declare-fun arrayNoDuplicates!0 (array!47572 (_ BitVec 32) List!16287) Bool)

(assert (=> b!842762 (= lt!381009 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16284))))

(declare-fun res!572872 () Bool)

(assert (=> start!72642 (=> (not res!572872) (not e!470172))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72642 (= res!572872 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23254 _keys!868))))))

(assert (=> start!72642 e!470172))

(assert (=> start!72642 true))

(declare-fun array_inv!18136 (array!47572) Bool)

(assert (=> start!72642 (array_inv!18136 _keys!868)))

(declare-datatypes ((V!25933 0))(
  ( (V!25934 (val!7880 Int)) )
))
(declare-datatypes ((ValueCell!7393 0))(
  ( (ValueCellFull!7393 (v!10301 V!25933)) (EmptyCell!7393) )
))
(declare-datatypes ((array!47574 0))(
  ( (array!47575 (arr!22814 (Array (_ BitVec 32) ValueCell!7393)) (size!23255 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47574)

(declare-fun e!470171 () Bool)

(declare-fun array_inv!18137 (array!47574) Bool)

(assert (=> start!72642 (and (array_inv!18137 _values!688) e!470171)))

(declare-fun b!842763 () Bool)

(declare-fun res!572874 () Bool)

(assert (=> b!842763 (=> (not res!572874) (not e!470172))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842763 (= res!572874 (validMask!0 mask!1196))))

(declare-fun b!842764 () Bool)

(declare-fun e!470174 () Bool)

(declare-fun mapRes!25097 () Bool)

(assert (=> b!842764 (= e!470171 (and e!470174 mapRes!25097))))

(declare-fun condMapEmpty!25097 () Bool)

(declare-fun mapDefault!25097 () ValueCell!7393)

