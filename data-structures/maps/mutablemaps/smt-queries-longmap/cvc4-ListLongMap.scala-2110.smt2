; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35840 () Bool)

(assert start!35840)

(declare-fun b!359848 () Bool)

(declare-fun res!200129 () Bool)

(declare-fun e!220404 () Bool)

(assert (=> b!359848 (=> (not res!200129) (not e!220404))))

(declare-datatypes ((array!20091 0))(
  ( (array!20092 (arr!9536 (Array (_ BitVec 32) (_ BitVec 64))) (size!9888 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20091)

(declare-fun from!1805 () (_ BitVec 32))

(declare-fun k!1077 () (_ BitVec 64))

(assert (=> b!359848 (= res!200129 (not (= (select (arr!9536 _keys!1456) from!1805) k!1077)))))

(declare-fun mapNonEmpty!13935 () Bool)

(declare-fun mapRes!13935 () Bool)

(declare-fun tp!28002 () Bool)

(declare-fun e!220402 () Bool)

(assert (=> mapNonEmpty!13935 (= mapRes!13935 (and tp!28002 e!220402))))

(declare-fun mapKey!13935 () (_ BitVec 32))

(declare-datatypes ((V!12023 0))(
  ( (V!12024 (val!4187 Int)) )
))
(declare-datatypes ((ValueCell!3799 0))(
  ( (ValueCellFull!3799 (v!6377 V!12023)) (EmptyCell!3799) )
))
(declare-datatypes ((array!20093 0))(
  ( (array!20094 (arr!9537 (Array (_ BitVec 32) ValueCell!3799)) (size!9889 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20093)

(declare-fun mapRest!13935 () (Array (_ BitVec 32) ValueCell!3799))

(declare-fun mapValue!13935 () ValueCell!3799)

(assert (=> mapNonEmpty!13935 (= (arr!9537 _values!1208) (store mapRest!13935 mapKey!13935 mapValue!13935))))

(declare-fun mapIsEmpty!13935 () Bool)

(assert (=> mapIsEmpty!13935 mapRes!13935))

(declare-fun b!359849 () Bool)

(declare-fun res!200127 () Bool)

(assert (=> b!359849 (=> (not res!200127) (not e!220404))))

(declare-datatypes ((List!5508 0))(
  ( (Nil!5505) (Cons!5504 (h!6360 (_ BitVec 64)) (t!10666 List!5508)) )
))
(declare-fun arrayNoDuplicates!0 (array!20091 (_ BitVec 32) List!5508) Bool)

(assert (=> b!359849 (= res!200127 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5505))))

(declare-fun b!359850 () Bool)

(declare-fun e!220405 () Bool)

(declare-fun e!220403 () Bool)

(assert (=> b!359850 (= e!220405 (and e!220403 mapRes!13935))))

(declare-fun condMapEmpty!13935 () Bool)

(declare-fun mapDefault!13935 () ValueCell!3799)

