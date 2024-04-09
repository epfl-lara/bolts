; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105590 () Bool)

(assert start!105590)

(declare-fun b_free!27169 () Bool)

(declare-fun b_next!27169 () Bool)

(assert (=> start!105590 (= b_free!27169 (not b_next!27169))))

(declare-fun tp!95028 () Bool)

(declare-fun b_and!45045 () Bool)

(assert (=> start!105590 (= tp!95028 b_and!45045)))

(declare-fun res!838245 () Bool)

(declare-fun e!715023 () Bool)

(assert (=> start!105590 (=> (not res!838245) (not e!715023))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105590 (= res!838245 (validMask!0 mask!1466))))

(assert (=> start!105590 e!715023))

(assert (=> start!105590 true))

(assert (=> start!105590 tp!95028))

(declare-fun tp_is_empty!32071 () Bool)

(assert (=> start!105590 tp_is_empty!32071))

(declare-datatypes ((array!81777 0))(
  ( (array!81778 (arr!39441 (Array (_ BitVec 32) (_ BitVec 64))) (size!39978 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81777)

(declare-fun array_inv!29991 (array!81777) Bool)

(assert (=> start!105590 (array_inv!29991 _keys!1118)))

(declare-datatypes ((V!48127 0))(
  ( (V!48128 (val!16098 Int)) )
))
(declare-datatypes ((ValueCell!15272 0))(
  ( (ValueCellFull!15272 (v!18800 V!48127)) (EmptyCell!15272) )
))
(declare-datatypes ((array!81779 0))(
  ( (array!81780 (arr!39442 (Array (_ BitVec 32) ValueCell!15272)) (size!39979 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81779)

(declare-fun e!715025 () Bool)

(declare-fun array_inv!29992 (array!81779) Bool)

(assert (=> start!105590 (and (array_inv!29992 _values!914) e!715025)))

(declare-fun b!1257392 () Bool)

(declare-fun res!838246 () Bool)

(assert (=> b!1257392 (=> (not res!838246) (not e!715023))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81777 (_ BitVec 32)) Bool)

(assert (=> b!1257392 (= res!838246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257393 () Bool)

(declare-fun e!715026 () Bool)

(declare-fun mapRes!49897 () Bool)

(assert (=> b!1257393 (= e!715025 (and e!715026 mapRes!49897))))

(declare-fun condMapEmpty!49897 () Bool)

(declare-fun mapDefault!49897 () ValueCell!15272)

