; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39778 () Bool)

(assert start!39778)

(declare-fun b_free!10037 () Bool)

(declare-fun b_next!10037 () Bool)

(assert (=> start!39778 (= b_free!10037 (not b_next!10037))))

(declare-fun tp!35640 () Bool)

(declare-fun b_and!17751 () Bool)

(assert (=> start!39778 (= tp!35640 b_and!17751)))

(declare-fun mapIsEmpty!18405 () Bool)

(declare-fun mapRes!18405 () Bool)

(assert (=> mapIsEmpty!18405 mapRes!18405))

(declare-fun b!428235 () Bool)

(declare-datatypes ((Unit!12525 0))(
  ( (Unit!12526) )
))
(declare-fun e!253792 () Unit!12525)

(declare-fun Unit!12527 () Unit!12525)

(assert (=> b!428235 (= e!253792 Unit!12527)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!195717 () Unit!12525)

(declare-datatypes ((array!26195 0))(
  ( (array!26196 (arr!12544 (Array (_ BitVec 32) (_ BitVec 64))) (size!12896 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26195)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26195 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12525)

(assert (=> b!428235 (= lt!195717 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428235 false))

(declare-fun b!428236 () Bool)

(declare-fun res!251440 () Bool)

(declare-fun e!253789 () Bool)

(assert (=> b!428236 (=> (not res!251440) (not e!253789))))

(declare-datatypes ((List!7407 0))(
  ( (Nil!7404) (Cons!7403 (h!8259 (_ BitVec 64)) (t!12901 List!7407)) )
))
(declare-fun arrayNoDuplicates!0 (array!26195 (_ BitVec 32) List!7407) Bool)

(assert (=> b!428236 (= res!251440 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7404))))

(declare-fun b!428237 () Bool)

(declare-fun res!251444 () Bool)

(declare-fun e!253790 () Bool)

(assert (=> b!428237 (=> (not res!251444) (not e!253790))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428237 (= res!251444 (bvsle from!863 i!563))))

(declare-fun b!428238 () Bool)

(declare-fun e!253791 () Bool)

(declare-fun tp_is_empty!11189 () Bool)

(assert (=> b!428238 (= e!253791 tp_is_empty!11189)))

(declare-fun b!428239 () Bool)

(declare-fun res!251446 () Bool)

(assert (=> b!428239 (=> (not res!251446) (not e!253789))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428239 (= res!251446 (validMask!0 mask!1025))))

(declare-fun b!428241 () Bool)

(declare-fun res!251439 () Bool)

(assert (=> b!428241 (=> (not res!251439) (not e!253789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428241 (= res!251439 (validKeyInArray!0 k!794))))

(declare-fun b!428242 () Bool)

(declare-fun res!251448 () Bool)

(assert (=> b!428242 (=> (not res!251448) (not e!253789))))

(assert (=> b!428242 (= res!251448 (or (= (select (arr!12544 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12544 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!428243 () Bool)

(declare-fun Unit!12528 () Unit!12525)

(assert (=> b!428243 (= e!253792 Unit!12528)))

(declare-fun b!428244 () Bool)

(declare-fun e!253793 () Bool)

(assert (=> b!428244 (= e!253793 tp_is_empty!11189)))

(declare-fun b!428245 () Bool)

(declare-fun e!253787 () Bool)

(assert (=> b!428245 (= e!253787 (and e!253793 mapRes!18405))))

(declare-fun condMapEmpty!18405 () Bool)

(declare-datatypes ((V!16023 0))(
  ( (V!16024 (val!5639 Int)) )
))
(declare-datatypes ((ValueCell!5251 0))(
  ( (ValueCellFull!5251 (v!7882 V!16023)) (EmptyCell!5251) )
))
(declare-datatypes ((array!26197 0))(
  ( (array!26198 (arr!12545 (Array (_ BitVec 32) ValueCell!5251)) (size!12897 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26197)

(declare-fun mapDefault!18405 () ValueCell!5251)

