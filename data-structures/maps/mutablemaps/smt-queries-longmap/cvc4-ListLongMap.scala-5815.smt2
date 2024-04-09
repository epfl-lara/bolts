; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75024 () Bool)

(assert start!75024)

(declare-fun b_free!15485 () Bool)

(declare-fun b_next!15485 () Bool)

(assert (=> start!75024 (= b_free!15485 (not b_next!15485))))

(declare-fun tp!54162 () Bool)

(declare-fun b_and!25693 () Bool)

(assert (=> start!75024 (= tp!54162 b_and!25693)))

(declare-fun res!601021 () Bool)

(declare-fun e!492301 () Bool)

(assert (=> start!75024 (=> (not res!601021) (not e!492301))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51568 0))(
  ( (array!51569 (arr!24798 (Array (_ BitVec 32) (_ BitVec 64))) (size!25239 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51568)

(assert (=> start!75024 (= res!601021 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25239 _keys!868))))))

(assert (=> start!75024 e!492301))

(declare-fun tp_is_empty!17729 () Bool)

(assert (=> start!75024 tp_is_empty!17729))

(assert (=> start!75024 true))

(assert (=> start!75024 tp!54162))

(declare-fun array_inv!19498 (array!51568) Bool)

(assert (=> start!75024 (array_inv!19498 _keys!868)))

(declare-datatypes ((V!28685 0))(
  ( (V!28686 (val!8912 Int)) )
))
(declare-datatypes ((ValueCell!8425 0))(
  ( (ValueCellFull!8425 (v!11381 V!28685)) (EmptyCell!8425) )
))
(declare-datatypes ((array!51570 0))(
  ( (array!51571 (arr!24799 (Array (_ BitVec 32) ValueCell!8425)) (size!25240 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51570)

(declare-fun e!492296 () Bool)

(declare-fun array_inv!19499 (array!51570) Bool)

(assert (=> start!75024 (and (array_inv!19499 _values!688) e!492296)))

(declare-fun b!884561 () Bool)

(declare-fun e!492300 () Bool)

(declare-fun mapRes!28233 () Bool)

(assert (=> b!884561 (= e!492296 (and e!492300 mapRes!28233))))

(declare-fun condMapEmpty!28233 () Bool)

(declare-fun mapDefault!28233 () ValueCell!8425)

