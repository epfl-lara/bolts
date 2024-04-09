; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72654 () Bool)

(assert start!72654)

(declare-fun b!842888 () Bool)

(declare-fun e!470264 () Bool)

(declare-fun tp_is_empty!15677 () Bool)

(assert (=> b!842888 (= e!470264 tp_is_empty!15677)))

(declare-fun b!842889 () Bool)

(declare-fun res!572945 () Bool)

(declare-fun e!470265 () Bool)

(assert (=> b!842889 (=> (not res!572945) (not e!470265))))

(declare-datatypes ((array!47594 0))(
  ( (array!47595 (arr!22824 (Array (_ BitVec 32) (_ BitVec 64))) (size!23265 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47594)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47594 (_ BitVec 32)) Bool)

(assert (=> b!842889 (= res!572945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842890 () Bool)

(assert (=> b!842890 (= e!470265 false)))

(declare-fun lt!381027 () Bool)

(declare-datatypes ((List!16291 0))(
  ( (Nil!16288) (Cons!16287 (h!17418 (_ BitVec 64)) (t!22670 List!16291)) )
))
(declare-fun arrayNoDuplicates!0 (array!47594 (_ BitVec 32) List!16291) Bool)

(assert (=> b!842890 (= lt!381027 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16288))))

(declare-fun res!572943 () Bool)

(assert (=> start!72654 (=> (not res!572943) (not e!470265))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72654 (= res!572943 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23265 _keys!868))))))

(assert (=> start!72654 e!470265))

(assert (=> start!72654 true))

(declare-fun array_inv!18146 (array!47594) Bool)

(assert (=> start!72654 (array_inv!18146 _keys!868)))

(declare-datatypes ((V!25949 0))(
  ( (V!25950 (val!7886 Int)) )
))
(declare-datatypes ((ValueCell!7399 0))(
  ( (ValueCellFull!7399 (v!10307 V!25949)) (EmptyCell!7399) )
))
(declare-datatypes ((array!47596 0))(
  ( (array!47597 (arr!22825 (Array (_ BitVec 32) ValueCell!7399)) (size!23266 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47596)

(declare-fun e!470262 () Bool)

(declare-fun array_inv!18147 (array!47596) Bool)

(assert (=> start!72654 (and (array_inv!18147 _values!688) e!470262)))

(declare-fun mapIsEmpty!25115 () Bool)

(declare-fun mapRes!25115 () Bool)

(assert (=> mapIsEmpty!25115 mapRes!25115))

(declare-fun b!842891 () Bool)

(declare-fun res!572946 () Bool)

(assert (=> b!842891 (=> (not res!572946) (not e!470265))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842891 (= res!572946 (and (= (size!23266 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23265 _keys!868) (size!23266 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25115 () Bool)

(declare-fun tp!48434 () Bool)

(declare-fun e!470263 () Bool)

(assert (=> mapNonEmpty!25115 (= mapRes!25115 (and tp!48434 e!470263))))

(declare-fun mapRest!25115 () (Array (_ BitVec 32) ValueCell!7399))

(declare-fun mapValue!25115 () ValueCell!7399)

(declare-fun mapKey!25115 () (_ BitVec 32))

(assert (=> mapNonEmpty!25115 (= (arr!22825 _values!688) (store mapRest!25115 mapKey!25115 mapValue!25115))))

(declare-fun b!842892 () Bool)

(assert (=> b!842892 (= e!470262 (and e!470264 mapRes!25115))))

(declare-fun condMapEmpty!25115 () Bool)

(declare-fun mapDefault!25115 () ValueCell!7399)

