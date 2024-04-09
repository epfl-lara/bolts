; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105594 () Bool)

(assert start!105594)

(declare-fun b_free!27173 () Bool)

(declare-fun b_next!27173 () Bool)

(assert (=> start!105594 (= b_free!27173 (not b_next!27173))))

(declare-fun tp!95040 () Bool)

(declare-fun b_and!45049 () Bool)

(assert (=> start!105594 (= tp!95040 b_and!45049)))

(declare-fun b!1257434 () Bool)

(declare-fun e!715054 () Bool)

(declare-fun e!715053 () Bool)

(declare-fun mapRes!49903 () Bool)

(assert (=> b!1257434 (= e!715054 (and e!715053 mapRes!49903))))

(declare-fun condMapEmpty!49903 () Bool)

(declare-datatypes ((V!48131 0))(
  ( (V!48132 (val!16100 Int)) )
))
(declare-datatypes ((ValueCell!15274 0))(
  ( (ValueCellFull!15274 (v!18802 V!48131)) (EmptyCell!15274) )
))
(declare-datatypes ((array!81785 0))(
  ( (array!81786 (arr!39445 (Array (_ BitVec 32) ValueCell!15274)) (size!39982 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81785)

(declare-fun mapDefault!49903 () ValueCell!15274)

