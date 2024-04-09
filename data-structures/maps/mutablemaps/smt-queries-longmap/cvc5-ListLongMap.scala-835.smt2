; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20118 () Bool)

(assert start!20118)

(declare-fun b_free!4765 () Bool)

(declare-fun b_next!4765 () Bool)

(assert (=> start!20118 (= b_free!4765 (not b_next!4765))))

(declare-fun tp!17326 () Bool)

(declare-fun b_and!11529 () Bool)

(assert (=> start!20118 (= tp!17326 b_and!11529)))

(declare-fun b!196981 () Bool)

(declare-fun res!93094 () Bool)

(declare-fun e!129699 () Bool)

(assert (=> b!196981 (=> (not res!93094) (not e!129699))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8496 0))(
  ( (array!8497 (arr!3998 (Array (_ BitVec 32) (_ BitVec 64))) (size!4323 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8496)

(assert (=> b!196981 (= res!93094 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4323 _keys!825))))))

(declare-fun b!196982 () Bool)

(declare-fun e!129698 () Bool)

(declare-fun e!129696 () Bool)

(declare-fun mapRes!8000 () Bool)

(assert (=> b!196982 (= e!129698 (and e!129696 mapRes!8000))))

(declare-fun condMapEmpty!8000 () Bool)

(declare-datatypes ((V!5809 0))(
  ( (V!5810 (val!2355 Int)) )
))
(declare-datatypes ((ValueCell!1967 0))(
  ( (ValueCellFull!1967 (v!4321 V!5809)) (EmptyCell!1967) )
))
(declare-datatypes ((array!8498 0))(
  ( (array!8499 (arr!3999 (Array (_ BitVec 32) ValueCell!1967)) (size!4324 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8498)

(declare-fun mapDefault!8000 () ValueCell!1967)

