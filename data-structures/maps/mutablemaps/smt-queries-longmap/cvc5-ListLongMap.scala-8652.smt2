; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105288 () Bool)

(assert start!105288)

(declare-fun b_free!26947 () Bool)

(declare-fun b_next!26947 () Bool)

(assert (=> start!105288 (= b_free!26947 (not b_next!26947))))

(declare-fun tp!94349 () Bool)

(declare-fun b_and!44783 () Bool)

(assert (=> start!105288 (= tp!94349 b_and!44783)))

(declare-fun b!1254075 () Bool)

(declare-fun res!836274 () Bool)

(declare-fun e!712585 () Bool)

(assert (=> b!1254075 (=> (not res!836274) (not e!712585))))

(declare-datatypes ((array!81335 0))(
  ( (array!81336 (arr!39224 (Array (_ BitVec 32) (_ BitVec 64))) (size!39761 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81335)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81335 (_ BitVec 32)) Bool)

(assert (=> b!1254075 (= res!836274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254076 () Bool)

(declare-fun e!712583 () Bool)

(declare-fun e!712580 () Bool)

(declare-fun mapRes!49552 () Bool)

(assert (=> b!1254076 (= e!712583 (and e!712580 mapRes!49552))))

(declare-fun condMapEmpty!49552 () Bool)

(declare-datatypes ((V!47831 0))(
  ( (V!47832 (val!15987 Int)) )
))
(declare-datatypes ((ValueCell!15161 0))(
  ( (ValueCellFull!15161 (v!18686 V!47831)) (EmptyCell!15161) )
))
(declare-datatypes ((array!81337 0))(
  ( (array!81338 (arr!39225 (Array (_ BitVec 32) ValueCell!15161)) (size!39762 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81337)

(declare-fun mapDefault!49552 () ValueCell!15161)

