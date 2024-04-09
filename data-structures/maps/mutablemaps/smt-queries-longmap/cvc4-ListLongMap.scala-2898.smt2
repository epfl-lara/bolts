; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41542 () Bool)

(assert start!41542)

(declare-fun b_free!11201 () Bool)

(declare-fun b_next!11201 () Bool)

(assert (=> start!41542 (= b_free!11201 (not b_next!11201))))

(declare-fun tp!39600 () Bool)

(declare-fun b_and!19559 () Bool)

(assert (=> start!41542 (= tp!39600 b_and!19559)))

(declare-fun mapNonEmpty!20620 () Bool)

(declare-fun mapRes!20620 () Bool)

(declare-fun tp!39601 () Bool)

(declare-fun e!270848 () Bool)

(assert (=> mapNonEmpty!20620 (= mapRes!20620 (and tp!39601 e!270848))))

(declare-datatypes ((V!17943 0))(
  ( (V!17944 (val!6359 Int)) )
))
(declare-datatypes ((ValueCell!5971 0))(
  ( (ValueCellFull!5971 (v!8642 V!17943)) (EmptyCell!5971) )
))
(declare-datatypes ((array!29015 0))(
  ( (array!29016 (arr!13936 (Array (_ BitVec 32) ValueCell!5971)) (size!14288 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29015)

(declare-fun mapKey!20620 () (_ BitVec 32))

(declare-fun mapValue!20620 () ValueCell!5971)

(declare-fun mapRest!20620 () (Array (_ BitVec 32) ValueCell!5971))

(assert (=> mapNonEmpty!20620 (= (arr!13936 _values!833) (store mapRest!20620 mapKey!20620 mapValue!20620))))

(declare-fun b!463762 () Bool)

(declare-fun e!270850 () Bool)

(declare-fun tp_is_empty!12629 () Bool)

(assert (=> b!463762 (= e!270850 tp_is_empty!12629)))

(declare-fun b!463763 () Bool)

(declare-fun res!277354 () Bool)

(declare-fun e!270849 () Bool)

(assert (=> b!463763 (=> (not res!277354) (not e!270849))))

(declare-datatypes ((array!29017 0))(
  ( (array!29018 (arr!13937 (Array (_ BitVec 32) (_ BitVec 64))) (size!14289 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29017)

(declare-datatypes ((List!8437 0))(
  ( (Nil!8434) (Cons!8433 (h!9289 (_ BitVec 64)) (t!14391 List!8437)) )
))
(declare-fun arrayNoDuplicates!0 (array!29017 (_ BitVec 32) List!8437) Bool)

(assert (=> b!463763 (= res!277354 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8434))))

(declare-fun b!463764 () Bool)

(declare-fun e!270846 () Bool)

(assert (=> b!463764 (= e!270846 (and e!270850 mapRes!20620))))

(declare-fun condMapEmpty!20620 () Bool)

(declare-fun mapDefault!20620 () ValueCell!5971)

