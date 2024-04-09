; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104860 () Bool)

(assert start!104860)

(declare-fun b_free!26629 () Bool)

(declare-fun b_next!26629 () Bool)

(assert (=> start!104860 (= b_free!26629 (not b_next!26629))))

(declare-fun tp!93377 () Bool)

(declare-fun b_and!44407 () Bool)

(assert (=> start!104860 (= tp!93377 b_and!44407)))

(declare-fun b!1249396 () Bool)

(declare-fun res!833519 () Bool)

(declare-fun e!709149 () Bool)

(assert (=> b!1249396 (=> (not res!833519) (not e!709149))))

(declare-datatypes ((array!80719 0))(
  ( (array!80720 (arr!38922 (Array (_ BitVec 32) (_ BitVec 64))) (size!39459 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80719)

(declare-datatypes ((List!27794 0))(
  ( (Nil!27791) (Cons!27790 (h!28999 (_ BitVec 64)) (t!41272 List!27794)) )
))
(declare-fun arrayNoDuplicates!0 (array!80719 (_ BitVec 32) List!27794) Bool)

(assert (=> b!1249396 (= res!833519 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27791))))

(declare-fun b!1249397 () Bool)

(declare-fun e!709150 () Bool)

(declare-fun tp_is_empty!31531 () Bool)

(assert (=> b!1249397 (= e!709150 tp_is_empty!31531)))

(declare-fun b!1249398 () Bool)

(declare-fun res!833517 () Bool)

(assert (=> b!1249398 (=> (not res!833517) (not e!709149))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80719 (_ BitVec 32)) Bool)

(assert (=> b!1249398 (= res!833517 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249399 () Bool)

(declare-fun e!709151 () Bool)

(declare-fun mapRes!49057 () Bool)

(assert (=> b!1249399 (= e!709151 (and e!709150 mapRes!49057))))

(declare-fun condMapEmpty!49057 () Bool)

(declare-datatypes ((V!47407 0))(
  ( (V!47408 (val!15828 Int)) )
))
(declare-datatypes ((ValueCell!15002 0))(
  ( (ValueCellFull!15002 (v!18524 V!47407)) (EmptyCell!15002) )
))
(declare-datatypes ((array!80721 0))(
  ( (array!80722 (arr!38923 (Array (_ BitVec 32) ValueCell!15002)) (size!39460 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80721)

(declare-fun mapDefault!49057 () ValueCell!15002)

