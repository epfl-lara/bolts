; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20140 () Bool)

(assert start!20140)

(declare-fun b_free!4787 () Bool)

(declare-fun b_next!4787 () Bool)

(assert (=> start!20140 (= b_free!4787 (not b_next!4787))))

(declare-fun tp!17393 () Bool)

(declare-fun b_and!11551 () Bool)

(assert (=> start!20140 (= tp!17393 b_and!11551)))

(declare-fun b!197310 () Bool)

(declare-fun res!93326 () Bool)

(declare-fun e!129861 () Bool)

(assert (=> b!197310 (=> (not res!93326) (not e!129861))))

(declare-datatypes ((array!8538 0))(
  ( (array!8539 (arr!4019 (Array (_ BitVec 32) (_ BitVec 64))) (size!4344 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8538)

(declare-datatypes ((List!2529 0))(
  ( (Nil!2526) (Cons!2525 (h!3167 (_ BitVec 64)) (t!7468 List!2529)) )
))
(declare-fun arrayNoDuplicates!0 (array!8538 (_ BitVec 32) List!2529) Bool)

(assert (=> b!197310 (= res!93326 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2526))))

(declare-fun b!197311 () Bool)

(declare-fun res!93324 () Bool)

(assert (=> b!197311 (=> (not res!93324) (not e!129861))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!197311 (= res!93324 (= (select (arr!4019 _keys!825) i!601) k!843))))

(declare-fun b!197312 () Bool)

(declare-fun res!93327 () Bool)

(assert (=> b!197312 (=> (not res!93327) (not e!129861))))

(assert (=> b!197312 (= res!93327 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4344 _keys!825))))))

(declare-fun b!197313 () Bool)

(declare-fun e!129864 () Bool)

(declare-fun tp_is_empty!4643 () Bool)

(assert (=> b!197313 (= e!129864 tp_is_empty!4643)))

(declare-fun mapIsEmpty!8033 () Bool)

(declare-fun mapRes!8033 () Bool)

(assert (=> mapIsEmpty!8033 mapRes!8033))

(declare-fun b!197314 () Bool)

(declare-fun res!93322 () Bool)

(assert (=> b!197314 (=> (not res!93322) (not e!129861))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!5837 0))(
  ( (V!5838 (val!2366 Int)) )
))
(declare-datatypes ((ValueCell!1978 0))(
  ( (ValueCellFull!1978 (v!4332 V!5837)) (EmptyCell!1978) )
))
(declare-datatypes ((array!8540 0))(
  ( (array!8541 (arr!4020 (Array (_ BitVec 32) ValueCell!1978)) (size!4345 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8540)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!197314 (= res!93322 (and (= (size!4345 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4344 _keys!825) (size!4345 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!197315 () Bool)

(declare-fun e!129862 () Bool)

(assert (=> b!197315 (= e!129862 (and e!129864 mapRes!8033))))

(declare-fun condMapEmpty!8033 () Bool)

(declare-fun mapDefault!8033 () ValueCell!1978)

