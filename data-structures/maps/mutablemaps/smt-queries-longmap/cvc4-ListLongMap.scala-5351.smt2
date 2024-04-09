; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71708 () Bool)

(assert start!71708)

(declare-fun b_free!13517 () Bool)

(declare-fun b_next!13517 () Bool)

(assert (=> start!71708 (= b_free!13517 (not b_next!13517))))

(declare-fun tp!47347 () Bool)

(declare-fun b_and!22621 () Bool)

(assert (=> start!71708 (= tp!47347 b_and!22621)))

(declare-fun b!833486 () Bool)

(declare-fun e!464992 () Bool)

(declare-fun tp_is_empty!15227 () Bool)

(assert (=> b!833486 (= e!464992 tp_is_empty!15227)))

(declare-fun res!566871 () Bool)

(declare-fun e!464994 () Bool)

(assert (=> start!71708 (=> (not res!566871) (not e!464994))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71708 (= res!566871 (validMask!0 mask!1312))))

(assert (=> start!71708 e!464994))

(assert (=> start!71708 tp_is_empty!15227))

(declare-datatypes ((array!46600 0))(
  ( (array!46601 (arr!22330 (Array (_ BitVec 32) (_ BitVec 64))) (size!22751 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46600)

(declare-fun array_inv!17759 (array!46600) Bool)

(assert (=> start!71708 (array_inv!17759 _keys!976)))

(assert (=> start!71708 true))

(declare-datatypes ((V!25303 0))(
  ( (V!25304 (val!7661 Int)) )
))
(declare-datatypes ((ValueCell!7198 0))(
  ( (ValueCellFull!7198 (v!10105 V!25303)) (EmptyCell!7198) )
))
(declare-datatypes ((array!46602 0))(
  ( (array!46603 (arr!22331 (Array (_ BitVec 32) ValueCell!7198)) (size!22752 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46602)

(declare-fun e!464995 () Bool)

(declare-fun array_inv!17760 (array!46602) Bool)

(assert (=> start!71708 (and (array_inv!17760 _values!788) e!464995)))

(assert (=> start!71708 tp!47347))

(declare-fun b!833487 () Bool)

(declare-fun res!566872 () Bool)

(assert (=> b!833487 (=> (not res!566872) (not e!464994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46600 (_ BitVec 32)) Bool)

(assert (=> b!833487 (= res!566872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24503 () Bool)

(declare-fun mapRes!24503 () Bool)

(assert (=> mapIsEmpty!24503 mapRes!24503))

(declare-fun b!833488 () Bool)

(declare-fun e!464998 () Bool)

(assert (=> b!833488 (= e!464995 (and e!464998 mapRes!24503))))

(declare-fun condMapEmpty!24503 () Bool)

(declare-fun mapDefault!24503 () ValueCell!7198)

