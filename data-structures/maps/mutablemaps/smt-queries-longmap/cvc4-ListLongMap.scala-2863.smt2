; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41246 () Bool)

(assert start!41246)

(declare-fun b_free!11081 () Bool)

(declare-fun b_next!11081 () Bool)

(assert (=> start!41246 (= b_free!11081 (not b_next!11081))))

(declare-fun tp!39082 () Bool)

(declare-fun b_and!19419 () Bool)

(assert (=> start!41246 (= tp!39082 b_and!19419)))

(declare-fun mapNonEmpty!20281 () Bool)

(declare-fun mapRes!20281 () Bool)

(declare-fun tp!39081 () Bool)

(declare-fun e!268965 () Bool)

(assert (=> mapNonEmpty!20281 (= mapRes!20281 (and tp!39081 e!268965))))

(declare-fun mapKey!20281 () (_ BitVec 32))

(declare-datatypes ((V!17663 0))(
  ( (V!17664 (val!6254 Int)) )
))
(declare-datatypes ((ValueCell!5866 0))(
  ( (ValueCellFull!5866 (v!8532 V!17663)) (EmptyCell!5866) )
))
(declare-datatypes ((array!28601 0))(
  ( (array!28602 (arr!13737 (Array (_ BitVec 32) ValueCell!5866)) (size!14089 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28601)

(declare-fun mapValue!20281 () ValueCell!5866)

(declare-fun mapRest!20281 () (Array (_ BitVec 32) ValueCell!5866))

(assert (=> mapNonEmpty!20281 (= (arr!13737 _values!549) (store mapRest!20281 mapKey!20281 mapValue!20281))))

(declare-fun b!461146 () Bool)

(declare-fun e!268962 () Bool)

(declare-fun e!268964 () Bool)

(assert (=> b!461146 (= e!268962 e!268964)))

(declare-fun res!275903 () Bool)

(assert (=> b!461146 (=> (not res!275903) (not e!268964))))

(declare-datatypes ((array!28603 0))(
  ( (array!28604 (arr!13738 (Array (_ BitVec 32) (_ BitVec 64))) (size!14090 (_ BitVec 32))) )
))
(declare-fun lt!208922 () array!28603)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28603 (_ BitVec 32)) Bool)

(assert (=> b!461146 (= res!275903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!208922 mask!1025))))

(declare-fun _keys!709 () array!28603)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!461146 (= lt!208922 (array!28604 (store (arr!13738 _keys!709) i!563 k!794) (size!14090 _keys!709)))))

(declare-fun b!461147 () Bool)

(declare-fun tp_is_empty!12419 () Bool)

(assert (=> b!461147 (= e!268965 tp_is_empty!12419)))

(declare-fun b!461148 () Bool)

(declare-fun res!275898 () Bool)

(assert (=> b!461148 (=> (not res!275898) (not e!268962))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(assert (=> b!461148 (= res!275898 (and (= (size!14089 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14090 _keys!709) (size!14089 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!461149 () Bool)

(declare-fun res!275897 () Bool)

(assert (=> b!461149 (=> (not res!275897) (not e!268964))))

(declare-datatypes ((List!8325 0))(
  ( (Nil!8322) (Cons!8321 (h!9177 (_ BitVec 64)) (t!14275 List!8325)) )
))
(declare-fun arrayNoDuplicates!0 (array!28603 (_ BitVec 32) List!8325) Bool)

(assert (=> b!461149 (= res!275897 (arrayNoDuplicates!0 lt!208922 #b00000000000000000000000000000000 Nil!8322))))

(declare-fun b!461150 () Bool)

(declare-fun res!275900 () Bool)

(assert (=> b!461150 (=> (not res!275900) (not e!268962))))

(assert (=> b!461150 (= res!275900 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8322))))

(declare-fun res!275891 () Bool)

(assert (=> start!41246 (=> (not res!275891) (not e!268962))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!41246 (= res!275891 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!14090 _keys!709))))))

(assert (=> start!41246 e!268962))

(assert (=> start!41246 tp_is_empty!12419))

(assert (=> start!41246 tp!39082))

(assert (=> start!41246 true))

(declare-fun e!268968 () Bool)

(declare-fun array_inv!9922 (array!28601) Bool)

(assert (=> start!41246 (and (array_inv!9922 _values!549) e!268968)))

(declare-fun array_inv!9923 (array!28603) Bool)

(assert (=> start!41246 (array_inv!9923 _keys!709)))

(declare-fun b!461151 () Bool)

(declare-fun res!275901 () Bool)

(assert (=> b!461151 (=> (not res!275901) (not e!268962))))

(declare-fun arrayContainsKey!0 (array!28603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461151 (= res!275901 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!461152 () Bool)

(declare-fun res!275892 () Bool)

(assert (=> b!461152 (=> (not res!275892) (not e!268962))))

(assert (=> b!461152 (= res!275892 (or (= (select (arr!13738 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13738 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!461153 () Bool)

(declare-fun e!268963 () Bool)

(assert (=> b!461153 (= e!268963 tp_is_empty!12419)))

(declare-fun b!461154 () Bool)

(assert (=> b!461154 (= e!268968 (and e!268963 mapRes!20281))))

(declare-fun condMapEmpty!20281 () Bool)

(declare-fun mapDefault!20281 () ValueCell!5866)

