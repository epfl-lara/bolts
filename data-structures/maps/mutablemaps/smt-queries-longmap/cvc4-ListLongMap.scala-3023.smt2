; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42504 () Bool)

(assert start!42504)

(declare-fun b_free!11951 () Bool)

(declare-fun b_next!11951 () Bool)

(assert (=> start!42504 (= b_free!11951 (not b_next!11951))))

(declare-fun tp!41889 () Bool)

(declare-fun b_and!20437 () Bool)

(assert (=> start!42504 (= tp!41889 b_and!20437)))

(declare-fun b!473970 () Bool)

(declare-fun res!283175 () Bool)

(declare-fun e!278167 () Bool)

(assert (=> b!473970 (=> (not res!283175) (not e!278167))))

(declare-datatypes ((array!30475 0))(
  ( (array!30476 (arr!14653 (Array (_ BitVec 32) (_ BitVec 64))) (size!15005 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30475)

(declare-datatypes ((List!8982 0))(
  ( (Nil!8979) (Cons!8978 (h!9834 (_ BitVec 64)) (t!14962 List!8982)) )
))
(declare-fun arrayNoDuplicates!0 (array!30475 (_ BitVec 32) List!8982) Bool)

(assert (=> b!473970 (= res!283175 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8979))))

(declare-fun b!473971 () Bool)

(declare-fun e!278171 () Bool)

(declare-fun e!278170 () Bool)

(declare-fun mapRes!21784 () Bool)

(assert (=> b!473971 (= e!278171 (and e!278170 mapRes!21784))))

(declare-fun condMapEmpty!21784 () Bool)

(declare-datatypes ((V!18943 0))(
  ( (V!18944 (val!6734 Int)) )
))
(declare-datatypes ((ValueCell!6346 0))(
  ( (ValueCellFull!6346 (v!9022 V!18943)) (EmptyCell!6346) )
))
(declare-datatypes ((array!30477 0))(
  ( (array!30478 (arr!14654 (Array (_ BitVec 32) ValueCell!6346)) (size!15006 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30477)

(declare-fun mapDefault!21784 () ValueCell!6346)

