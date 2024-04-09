; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35264 () Bool)

(assert start!35264)

(declare-fun b!353226 () Bool)

(declare-fun e!216299 () Bool)

(declare-fun tp_is_empty!7765 () Bool)

(assert (=> b!353226 (= e!216299 tp_is_empty!7765)))

(declare-fun mapIsEmpty!13137 () Bool)

(declare-fun mapRes!13137 () Bool)

(assert (=> mapIsEmpty!13137 mapRes!13137))

(declare-fun b!353227 () Bool)

(declare-fun e!216303 () Bool)

(declare-fun e!216302 () Bool)

(assert (=> b!353227 (= e!216303 (and e!216302 mapRes!13137))))

(declare-fun condMapEmpty!13137 () Bool)

(declare-datatypes ((V!11331 0))(
  ( (V!11332 (val!3927 Int)) )
))
(declare-datatypes ((ValueCell!3539 0))(
  ( (ValueCellFull!3539 (v!6116 V!11331)) (EmptyCell!3539) )
))
(declare-datatypes ((array!19083 0))(
  ( (array!19084 (arr!9038 (Array (_ BitVec 32) ValueCell!3539)) (size!9390 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19083)

(declare-fun mapDefault!13137 () ValueCell!3539)

