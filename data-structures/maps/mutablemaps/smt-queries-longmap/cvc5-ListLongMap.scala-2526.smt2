; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38982 () Bool)

(assert start!38982)

(declare-fun b!407990 () Bool)

(declare-fun res!236080 () Bool)

(declare-fun e!244937 () Bool)

(assert (=> b!407990 (=> (not res!236080) (not e!244937))))

(declare-datatypes ((array!24641 0))(
  ( (array!24642 (arr!11767 (Array (_ BitVec 32) (_ BitVec 64))) (size!12119 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!24641)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!407990 (= res!236080 (or (= (select (arr!11767 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11767 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!407991 () Bool)

(declare-fun res!236082 () Bool)

(assert (=> b!407991 (=> (not res!236082) (not e!244937))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24641 (_ BitVec 32)) Bool)

(assert (=> b!407991 (= res!236082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!407992 () Bool)

(declare-fun res!236078 () Bool)

(assert (=> b!407992 (=> (not res!236078) (not e!244937))))

(declare-datatypes ((List!6800 0))(
  ( (Nil!6797) (Cons!6796 (h!7652 (_ BitVec 64)) (t!11982 List!6800)) )
))
(declare-fun arrayNoDuplicates!0 (array!24641 (_ BitVec 32) List!6800) Bool)

(assert (=> b!407992 (= res!236078 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6797))))

(declare-fun b!407993 () Bool)

(declare-fun e!244935 () Bool)

(declare-fun tp_is_empty!10393 () Bool)

(assert (=> b!407993 (= e!244935 tp_is_empty!10393)))

(declare-fun b!407994 () Bool)

(declare-fun res!236077 () Bool)

(assert (=> b!407994 (=> (not res!236077) (not e!244937))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!24641 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!407994 (= res!236077 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!407995 () Bool)

(declare-fun res!236079 () Bool)

(assert (=> b!407995 (=> (not res!236079) (not e!244937))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14963 0))(
  ( (V!14964 (val!5241 Int)) )
))
(declare-datatypes ((ValueCell!4853 0))(
  ( (ValueCellFull!4853 (v!7484 V!14963)) (EmptyCell!4853) )
))
(declare-datatypes ((array!24643 0))(
  ( (array!24644 (arr!11768 (Array (_ BitVec 32) ValueCell!4853)) (size!12120 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24643)

(assert (=> b!407995 (= res!236079 (and (= (size!12120 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12119 _keys!709) (size!12120 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!17211 () Bool)

(declare-fun mapRes!17211 () Bool)

(declare-fun tp!33330 () Bool)

(assert (=> mapNonEmpty!17211 (= mapRes!17211 (and tp!33330 e!244935))))

(declare-fun mapValue!17211 () ValueCell!4853)

(declare-fun mapRest!17211 () (Array (_ BitVec 32) ValueCell!4853))

(declare-fun mapKey!17211 () (_ BitVec 32))

(assert (=> mapNonEmpty!17211 (= (arr!11768 _values!549) (store mapRest!17211 mapKey!17211 mapValue!17211))))

(declare-fun res!236076 () Bool)

(assert (=> start!38982 (=> (not res!236076) (not e!244937))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!38982 (= res!236076 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12119 _keys!709))))))

(assert (=> start!38982 e!244937))

(assert (=> start!38982 true))

(declare-fun e!244936 () Bool)

(declare-fun array_inv!8594 (array!24643) Bool)

(assert (=> start!38982 (and (array_inv!8594 _values!549) e!244936)))

(declare-fun array_inv!8595 (array!24641) Bool)

(assert (=> start!38982 (array_inv!8595 _keys!709)))

(declare-fun mapIsEmpty!17211 () Bool)

(assert (=> mapIsEmpty!17211 mapRes!17211))

(declare-fun b!407996 () Bool)

(declare-fun e!244934 () Bool)

(assert (=> b!407996 (= e!244936 (and e!244934 mapRes!17211))))

(declare-fun condMapEmpty!17211 () Bool)

(declare-fun mapDefault!17211 () ValueCell!4853)

