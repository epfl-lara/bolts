; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41028 () Bool)

(assert start!41028)

(declare-fun b_free!10955 () Bool)

(declare-fun b_next!10955 () Bool)

(assert (=> start!41028 (= b_free!10955 (not b_next!10955))))

(declare-fun tp!38692 () Bool)

(declare-fun b_and!19119 () Bool)

(assert (=> start!41028 (= tp!38692 b_and!19119)))

(declare-fun res!272949 () Bool)

(declare-fun e!266936 () Bool)

(assert (=> start!41028 (=> (not res!272949) (not e!266936))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28353 0))(
  ( (array!28354 (arr!13617 (Array (_ BitVec 32) (_ BitVec 64))) (size!13969 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28353)

(assert (=> start!41028 (= res!272949 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13969 _keys!709))))))

(assert (=> start!41028 e!266936))

(declare-fun tp_is_empty!12293 () Bool)

(assert (=> start!41028 tp_is_empty!12293))

(assert (=> start!41028 tp!38692))

(assert (=> start!41028 true))

(declare-datatypes ((V!17495 0))(
  ( (V!17496 (val!6191 Int)) )
))
(declare-datatypes ((ValueCell!5803 0))(
  ( (ValueCellFull!5803 (v!8453 V!17495)) (EmptyCell!5803) )
))
(declare-datatypes ((array!28355 0))(
  ( (array!28356 (arr!13618 (Array (_ BitVec 32) ValueCell!5803)) (size!13970 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28355)

(declare-fun e!266931 () Bool)

(declare-fun array_inv!9852 (array!28355) Bool)

(assert (=> start!41028 (and (array_inv!9852 _values!549) e!266931)))

(declare-fun array_inv!9853 (array!28353) Bool)

(assert (=> start!41028 (array_inv!9853 _keys!709)))

(declare-fun b!457009 () Bool)

(declare-fun e!266930 () Bool)

(assert (=> b!457009 (= e!266930 tp_is_empty!12293)))

(declare-fun b!457010 () Bool)

(declare-fun res!272948 () Bool)

(assert (=> b!457010 (=> (not res!272948) (not e!266936))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457010 (= res!272948 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13969 _keys!709))))))

(declare-fun b!457011 () Bool)

(declare-fun res!272956 () Bool)

(assert (=> b!457011 (=> (not res!272956) (not e!266936))))

(assert (=> b!457011 (= res!272956 (or (= (select (arr!13617 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13617 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!457012 () Bool)

(declare-fun e!266934 () Bool)

(assert (=> b!457012 (= e!266936 e!266934)))

(declare-fun res!272952 () Bool)

(assert (=> b!457012 (=> (not res!272952) (not e!266934))))

(declare-fun lt!206765 () array!28353)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28353 (_ BitVec 32)) Bool)

(assert (=> b!457012 (= res!272952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206765 mask!1025))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!457012 (= lt!206765 (array!28354 (store (arr!13617 _keys!709) i!563 k!794) (size!13969 _keys!709)))))

(declare-fun b!457013 () Bool)

(declare-fun mapRes!20080 () Bool)

(assert (=> b!457013 (= e!266931 (and e!266930 mapRes!20080))))

(declare-fun condMapEmpty!20080 () Bool)

(declare-fun mapDefault!20080 () ValueCell!5803)

