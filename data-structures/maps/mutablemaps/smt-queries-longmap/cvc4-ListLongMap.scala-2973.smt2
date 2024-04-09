; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42126 () Bool)

(assert start!42126)

(declare-fun b_free!11651 () Bool)

(declare-fun b_next!11651 () Bool)

(assert (=> start!42126 (= b_free!11651 (not b_next!11651))))

(declare-fun tp!40975 () Bool)

(declare-fun b_and!20091 () Bool)

(assert (=> start!42126 (= tp!40975 b_and!20091)))

(declare-fun b!470021 () Bool)

(declare-fun e!275332 () Bool)

(declare-fun tp_is_empty!13079 () Bool)

(assert (=> b!470021 (= e!275332 tp_is_empty!13079)))

(declare-fun b!470022 () Bool)

(declare-fun e!275330 () Bool)

(assert (=> b!470022 (= e!275330 tp_is_empty!13079)))

(declare-fun b!470023 () Bool)

(declare-fun res!280926 () Bool)

(declare-fun e!275331 () Bool)

(assert (=> b!470023 (=> (not res!280926) (not e!275331))))

(declare-datatypes ((array!29891 0))(
  ( (array!29892 (arr!14366 (Array (_ BitVec 32) (_ BitVec 64))) (size!14718 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29891)

(declare-datatypes ((List!8763 0))(
  ( (Nil!8760) (Cons!8759 (h!9615 (_ BitVec 64)) (t!14733 List!8763)) )
))
(declare-fun arrayNoDuplicates!0 (array!29891 (_ BitVec 32) List!8763) Bool)

(assert (=> b!470023 (= res!280926 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8760))))

(declare-fun res!280927 () Bool)

(assert (=> start!42126 (=> (not res!280927) (not e!275331))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42126 (= res!280927 (validMask!0 mask!1365))))

(assert (=> start!42126 e!275331))

(assert (=> start!42126 tp_is_empty!13079))

(assert (=> start!42126 tp!40975))

(assert (=> start!42126 true))

(declare-fun array_inv!10362 (array!29891) Bool)

(assert (=> start!42126 (array_inv!10362 _keys!1025)))

(declare-datatypes ((V!18543 0))(
  ( (V!18544 (val!6584 Int)) )
))
(declare-datatypes ((ValueCell!6196 0))(
  ( (ValueCellFull!6196 (v!8871 V!18543)) (EmptyCell!6196) )
))
(declare-datatypes ((array!29893 0))(
  ( (array!29894 (arr!14367 (Array (_ BitVec 32) ValueCell!6196)) (size!14719 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29893)

(declare-fun e!275333 () Bool)

(declare-fun array_inv!10363 (array!29893) Bool)

(assert (=> start!42126 (and (array_inv!10363 _values!833) e!275333)))

(declare-fun b!470024 () Bool)

(declare-fun mapRes!21319 () Bool)

(assert (=> b!470024 (= e!275333 (and e!275332 mapRes!21319))))

(declare-fun condMapEmpty!21319 () Bool)

(declare-fun mapDefault!21319 () ValueCell!6196)

