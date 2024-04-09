; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72794 () Bool)

(assert start!72794)

(declare-fun b!844358 () Bool)

(declare-fun e!471312 () Bool)

(declare-fun tp_is_empty!15817 () Bool)

(assert (=> b!844358 (= e!471312 tp_is_empty!15817)))

(declare-fun b!844359 () Bool)

(declare-fun e!471315 () Bool)

(assert (=> b!844359 (= e!471315 tp_is_empty!15817)))

(declare-fun b!844360 () Bool)

(declare-fun res!573783 () Bool)

(declare-fun e!471314 () Bool)

(assert (=> b!844360 (=> (not res!573783) (not e!471314))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47850 0))(
  ( (array!47851 (arr!22952 (Array (_ BitVec 32) (_ BitVec 64))) (size!23393 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47850)

(declare-datatypes ((V!26137 0))(
  ( (V!26138 (val!7956 Int)) )
))
(declare-datatypes ((ValueCell!7469 0))(
  ( (ValueCellFull!7469 (v!10377 V!26137)) (EmptyCell!7469) )
))
(declare-datatypes ((array!47852 0))(
  ( (array!47853 (arr!22953 (Array (_ BitVec 32) ValueCell!7469)) (size!23394 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47852)

(assert (=> b!844360 (= res!573783 (and (= (size!23394 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23393 _keys!868) (size!23394 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25325 () Bool)

(declare-fun mapRes!25325 () Bool)

(declare-fun tp!48644 () Bool)

(assert (=> mapNonEmpty!25325 (= mapRes!25325 (and tp!48644 e!471315))))

(declare-fun mapRest!25325 () (Array (_ BitVec 32) ValueCell!7469))

(declare-fun mapKey!25325 () (_ BitVec 32))

(declare-fun mapValue!25325 () ValueCell!7469)

(assert (=> mapNonEmpty!25325 (= (arr!22953 _values!688) (store mapRest!25325 mapKey!25325 mapValue!25325))))

(declare-fun b!844361 () Bool)

(declare-fun e!471313 () Bool)

(assert (=> b!844361 (= e!471313 (and e!471312 mapRes!25325))))

(declare-fun condMapEmpty!25325 () Bool)

(declare-fun mapDefault!25325 () ValueCell!7469)

