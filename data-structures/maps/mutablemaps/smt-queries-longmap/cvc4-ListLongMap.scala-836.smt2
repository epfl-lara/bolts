; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20128 () Bool)

(assert start!20128)

(declare-fun b_free!4775 () Bool)

(declare-fun b_next!4775 () Bool)

(assert (=> start!20128 (= b_free!4775 (not b_next!4775))))

(declare-fun tp!17356 () Bool)

(declare-fun b_and!11539 () Bool)

(assert (=> start!20128 (= tp!17356 b_and!11539)))

(declare-fun b!197130 () Bool)

(declare-fun res!93198 () Bool)

(declare-fun e!129775 () Bool)

(assert (=> b!197130 (=> (not res!93198) (not e!129775))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!8514 0))(
  ( (array!8515 (arr!4007 (Array (_ BitVec 32) (_ BitVec 64))) (size!4332 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8514)

(assert (=> b!197130 (= res!93198 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4332 _keys!825))))))

(declare-fun b!197131 () Bool)

(declare-fun e!129772 () Bool)

(declare-fun tp_is_empty!4631 () Bool)

(assert (=> b!197131 (= e!129772 tp_is_empty!4631)))

(declare-fun b!197132 () Bool)

(declare-fun res!93200 () Bool)

(assert (=> b!197132 (=> (not res!93200) (not e!129775))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8514 (_ BitVec 32)) Bool)

(assert (=> b!197132 (= res!93200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!197133 () Bool)

(declare-fun e!129774 () Bool)

(declare-fun e!129773 () Bool)

(declare-fun mapRes!8015 () Bool)

(assert (=> b!197133 (= e!129774 (and e!129773 mapRes!8015))))

(declare-fun condMapEmpty!8015 () Bool)

(declare-datatypes ((V!5821 0))(
  ( (V!5822 (val!2360 Int)) )
))
(declare-datatypes ((ValueCell!1972 0))(
  ( (ValueCellFull!1972 (v!4326 V!5821)) (EmptyCell!1972) )
))
(declare-datatypes ((array!8516 0))(
  ( (array!8517 (arr!4008 (Array (_ BitVec 32) ValueCell!1972)) (size!4333 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8516)

(declare-fun mapDefault!8015 () ValueCell!1972)

