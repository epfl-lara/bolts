; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40030 () Bool)

(assert start!40030)

(declare-fun b_free!10289 () Bool)

(declare-fun b_next!10289 () Bool)

(assert (=> start!40030 (= b_free!10289 (not b_next!10289))))

(declare-fun tp!36396 () Bool)

(declare-fun b_and!18255 () Bool)

(assert (=> start!40030 (= tp!36396 b_and!18255)))

(declare-fun b!435965 () Bool)

(declare-fun res!257039 () Bool)

(declare-fun e!257494 () Bool)

(assert (=> b!435965 (=> (not res!257039) (not e!257494))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435965 (= res!257039 (validMask!0 mask!1025))))

(declare-fun b!435966 () Bool)

(declare-datatypes ((Unit!12918 0))(
  ( (Unit!12919) )
))
(declare-fun e!257490 () Unit!12918)

(declare-fun Unit!12920 () Unit!12918)

(assert (=> b!435966 (= e!257490 Unit!12920)))

(declare-fun lt!200977 () Unit!12918)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26685 0))(
  ( (array!26686 (arr!12789 (Array (_ BitVec 32) (_ BitVec 64))) (size!13141 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26685)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26685 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12918)

(assert (=> b!435966 (= lt!200977 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435966 false))

(declare-fun b!435967 () Bool)

(declare-fun e!257487 () Bool)

(declare-fun e!257491 () Bool)

(declare-fun mapRes!18783 () Bool)

(assert (=> b!435967 (= e!257487 (and e!257491 mapRes!18783))))

(declare-fun condMapEmpty!18783 () Bool)

(declare-datatypes ((V!16359 0))(
  ( (V!16360 (val!5765 Int)) )
))
(declare-datatypes ((ValueCell!5377 0))(
  ( (ValueCellFull!5377 (v!8008 V!16359)) (EmptyCell!5377) )
))
(declare-datatypes ((array!26687 0))(
  ( (array!26688 (arr!12790 (Array (_ BitVec 32) ValueCell!5377)) (size!13142 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26687)

(declare-fun mapDefault!18783 () ValueCell!5377)

