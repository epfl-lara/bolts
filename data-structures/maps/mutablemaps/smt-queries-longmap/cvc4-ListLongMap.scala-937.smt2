; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20734 () Bool)

(assert start!20734)

(declare-fun b_free!5381 () Bool)

(declare-fun b_next!5381 () Bool)

(assert (=> start!20734 (= b_free!5381 (not b_next!5381))))

(declare-fun tp!19175 () Bool)

(declare-fun b_and!12145 () Bool)

(assert (=> start!20734 (= tp!19175 b_and!12145)))

(declare-fun b!207282 () Bool)

(declare-fun e!135351 () Bool)

(declare-fun tp_is_empty!5237 () Bool)

(assert (=> b!207282 (= e!135351 tp_is_empty!5237)))

(declare-fun mapIsEmpty!8924 () Bool)

(declare-fun mapRes!8924 () Bool)

(assert (=> mapIsEmpty!8924 mapRes!8924))

(declare-fun b!207283 () Bool)

(declare-fun res!100626 () Bool)

(declare-fun e!135354 () Bool)

(assert (=> b!207283 (=> (not res!100626) (not e!135354))))

(declare-datatypes ((array!9682 0))(
  ( (array!9683 (arr!4591 (Array (_ BitVec 32) (_ BitVec 64))) (size!4916 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9682)

(declare-datatypes ((List!2954 0))(
  ( (Nil!2951) (Cons!2950 (h!3592 (_ BitVec 64)) (t!7893 List!2954)) )
))
(declare-fun arrayNoDuplicates!0 (array!9682 (_ BitVec 32) List!2954) Bool)

(assert (=> b!207283 (= res!100626 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2951))))

(declare-fun b!207284 () Bool)

(declare-fun res!100621 () Bool)

(assert (=> b!207284 (=> (not res!100621) (not e!135354))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6629 0))(
  ( (V!6630 (val!2663 Int)) )
))
(declare-datatypes ((ValueCell!2275 0))(
  ( (ValueCellFull!2275 (v!4629 V!6629)) (EmptyCell!2275) )
))
(declare-datatypes ((array!9684 0))(
  ( (array!9685 (arr!4592 (Array (_ BitVec 32) ValueCell!2275)) (size!4917 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9684)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!207284 (= res!100621 (and (= (size!4917 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4916 _keys!825) (size!4917 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!8924 () Bool)

(declare-fun tp!19174 () Bool)

(declare-fun e!135353 () Bool)

(assert (=> mapNonEmpty!8924 (= mapRes!8924 (and tp!19174 e!135353))))

(declare-fun mapValue!8924 () ValueCell!2275)

(declare-fun mapRest!8924 () (Array (_ BitVec 32) ValueCell!2275))

(declare-fun mapKey!8924 () (_ BitVec 32))

(assert (=> mapNonEmpty!8924 (= (arr!4592 _values!649) (store mapRest!8924 mapKey!8924 mapValue!8924))))

(declare-fun b!207286 () Bool)

(declare-fun e!135352 () Bool)

(assert (=> b!207286 (= e!135352 (and e!135351 mapRes!8924))))

(declare-fun condMapEmpty!8924 () Bool)

(declare-fun mapDefault!8924 () ValueCell!2275)

