; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41572 () Bool)

(assert start!41572)

(declare-fun b_free!11231 () Bool)

(declare-fun b_next!11231 () Bool)

(assert (=> start!41572 (= b_free!11231 (not b_next!11231))))

(declare-fun tp!39691 () Bool)

(declare-fun b_and!19589 () Bool)

(assert (=> start!41572 (= tp!39691 b_and!19589)))

(declare-fun b!464077 () Bool)

(declare-fun e!271075 () Bool)

(declare-fun tp_is_empty!12659 () Bool)

(assert (=> b!464077 (= e!271075 tp_is_empty!12659)))

(declare-fun b!464078 () Bool)

(declare-fun e!271072 () Bool)

(declare-fun e!271071 () Bool)

(declare-fun mapRes!20665 () Bool)

(assert (=> b!464078 (= e!271072 (and e!271071 mapRes!20665))))

(declare-fun condMapEmpty!20665 () Bool)

(declare-datatypes ((V!17983 0))(
  ( (V!17984 (val!6374 Int)) )
))
(declare-datatypes ((ValueCell!5986 0))(
  ( (ValueCellFull!5986 (v!8657 V!17983)) (EmptyCell!5986) )
))
(declare-datatypes ((array!29071 0))(
  ( (array!29072 (arr!13964 (Array (_ BitVec 32) ValueCell!5986)) (size!14316 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29071)

(declare-fun mapDefault!20665 () ValueCell!5986)

