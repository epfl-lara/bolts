; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37872 () Bool)

(assert start!37872)

(declare-fun b_free!8923 () Bool)

(declare-fun b_next!8923 () Bool)

(assert (=> start!37872 (= b_free!8923 (not b_next!8923))))

(declare-fun tp!31527 () Bool)

(declare-fun b_and!16207 () Bool)

(assert (=> start!37872 (= tp!31527 b_and!16207)))

(declare-datatypes ((V!13899 0))(
  ( (V!13900 (val!4842 Int)) )
))
(declare-datatypes ((tuple2!6456 0))(
  ( (tuple2!6457 (_1!3238 (_ BitVec 64)) (_2!3238 V!13899)) )
))
(declare-datatypes ((List!6338 0))(
  ( (Nil!6335) (Cons!6334 (h!7190 tuple2!6456) (t!11500 List!6338)) )
))
(declare-datatypes ((ListLongMap!5383 0))(
  ( (ListLongMap!5384 (toList!2707 List!6338)) )
))
(declare-fun lt!182840 () ListLongMap!5383)

(declare-fun lt!182845 () ListLongMap!5383)

(declare-fun lt!182846 () tuple2!6456)

(declare-fun b!388960 () Bool)

(declare-fun lt!182841 () tuple2!6456)

(declare-fun e!235675 () Bool)

(declare-fun +!1005 (ListLongMap!5383 tuple2!6456) ListLongMap!5383)

(assert (=> b!388960 (= e!235675 (= lt!182840 (+!1005 (+!1005 lt!182845 lt!182846) lt!182841)))))

(declare-fun b!388961 () Bool)

(declare-fun res!222539 () Bool)

(declare-fun e!235676 () Bool)

(assert (=> b!388961 (=> (not res!222539) (not e!235676))))

(declare-datatypes ((array!23061 0))(
  ( (array!23062 (arr!10994 (Array (_ BitVec 32) (_ BitVec 64))) (size!11346 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23061)

(declare-datatypes ((List!6339 0))(
  ( (Nil!6336) (Cons!6335 (h!7191 (_ BitVec 64)) (t!11501 List!6339)) )
))
(declare-fun arrayNoDuplicates!0 (array!23061 (_ BitVec 32) List!6339) Bool)

(assert (=> b!388961 (= res!222539 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6336))))

(declare-fun b!388962 () Bool)

(declare-fun res!222537 () Bool)

(assert (=> b!388962 (=> (not res!222537) (not e!235676))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388962 (= res!222537 (validKeyInArray!0 k!778))))

(declare-fun res!222532 () Bool)

(assert (=> start!37872 (=> (not res!222532) (not e!235676))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37872 (= res!222532 (validMask!0 mask!970))))

(assert (=> start!37872 e!235676))

(declare-datatypes ((ValueCell!4454 0))(
  ( (ValueCellFull!4454 (v!7043 V!13899)) (EmptyCell!4454) )
))
(declare-datatypes ((array!23063 0))(
  ( (array!23064 (arr!10995 (Array (_ BitVec 32) ValueCell!4454)) (size!11347 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23063)

(declare-fun e!235670 () Bool)

(declare-fun array_inv!8060 (array!23063) Bool)

(assert (=> start!37872 (and (array_inv!8060 _values!506) e!235670)))

(assert (=> start!37872 tp!31527))

(assert (=> start!37872 true))

(declare-fun tp_is_empty!9595 () Bool)

(assert (=> start!37872 tp_is_empty!9595))

(declare-fun array_inv!8061 (array!23061) Bool)

(assert (=> start!37872 (array_inv!8061 _keys!658)))

(declare-fun b!388963 () Bool)

(declare-fun res!222530 () Bool)

(assert (=> b!388963 (=> (not res!222530) (not e!235676))))

(declare-fun arrayContainsKey!0 (array!23061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388963 (= res!222530 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!388964 () Bool)

(declare-fun e!235674 () Bool)

(declare-fun mapRes!15963 () Bool)

(assert (=> b!388964 (= e!235670 (and e!235674 mapRes!15963))))

(declare-fun condMapEmpty!15963 () Bool)

(declare-fun mapDefault!15963 () ValueCell!4454)

