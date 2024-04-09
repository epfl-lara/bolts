; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72734 () Bool)

(assert start!72734)

(declare-fun mapNonEmpty!25235 () Bool)

(declare-fun mapRes!25235 () Bool)

(declare-fun tp!48554 () Bool)

(declare-fun e!470864 () Bool)

(assert (=> mapNonEmpty!25235 (= mapRes!25235 (and tp!48554 e!470864))))

(declare-fun mapKey!25235 () (_ BitVec 32))

(declare-datatypes ((V!26057 0))(
  ( (V!26058 (val!7926 Int)) )
))
(declare-datatypes ((ValueCell!7439 0))(
  ( (ValueCellFull!7439 (v!10347 V!26057)) (EmptyCell!7439) )
))
(declare-fun mapRest!25235 () (Array (_ BitVec 32) ValueCell!7439))

(declare-fun mapValue!25235 () ValueCell!7439)

(declare-datatypes ((array!47740 0))(
  ( (array!47741 (arr!22897 (Array (_ BitVec 32) ValueCell!7439)) (size!23338 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47740)

(assert (=> mapNonEmpty!25235 (= (arr!22897 _values!688) (store mapRest!25235 mapKey!25235 mapValue!25235))))

(declare-fun mapIsEmpty!25235 () Bool)

(assert (=> mapIsEmpty!25235 mapRes!25235))

(declare-fun b!843728 () Bool)

(declare-fun e!470862 () Bool)

(assert (=> b!843728 (= e!470862 false)))

(declare-fun lt!381147 () Bool)

(declare-datatypes ((array!47742 0))(
  ( (array!47743 (arr!22898 (Array (_ BitVec 32) (_ BitVec 64))) (size!23339 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47742)

(declare-datatypes ((List!16321 0))(
  ( (Nil!16318) (Cons!16317 (h!17448 (_ BitVec 64)) (t!22700 List!16321)) )
))
(declare-fun arrayNoDuplicates!0 (array!47742 (_ BitVec 32) List!16321) Bool)

(assert (=> b!843728 (= lt!381147 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16318))))

(declare-fun b!843729 () Bool)

(declare-fun tp_is_empty!15757 () Bool)

(assert (=> b!843729 (= e!470864 tp_is_empty!15757)))

(declare-fun b!843730 () Bool)

(declare-fun res!573425 () Bool)

(assert (=> b!843730 (=> (not res!573425) (not e!470862))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843730 (= res!573425 (validMask!0 mask!1196))))

(declare-fun b!843731 () Bool)

(declare-fun e!470861 () Bool)

(assert (=> b!843731 (= e!470861 tp_is_empty!15757)))

(declare-fun b!843732 () Bool)

(declare-fun e!470863 () Bool)

(assert (=> b!843732 (= e!470863 (and e!470861 mapRes!25235))))

(declare-fun condMapEmpty!25235 () Bool)

(declare-fun mapDefault!25235 () ValueCell!7439)

