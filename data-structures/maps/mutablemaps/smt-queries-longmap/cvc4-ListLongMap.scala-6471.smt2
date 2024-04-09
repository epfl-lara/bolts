; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82698 () Bool)

(assert start!82698)

(declare-fun b_free!18803 () Bool)

(declare-fun b_next!18803 () Bool)

(assert (=> start!82698 (= b_free!18803 (not b_next!18803))))

(declare-fun tp!65530 () Bool)

(declare-fun b_and!30309 () Bool)

(assert (=> start!82698 (= tp!65530 b_and!30309)))

(declare-fun b!963672 () Bool)

(declare-fun res!645091 () Bool)

(declare-fun e!543358 () Bool)

(assert (=> b!963672 (=> (not res!645091) (not e!543358))))

(declare-datatypes ((V!33789 0))(
  ( (V!33790 (val!10853 Int)) )
))
(declare-datatypes ((ValueCell!10321 0))(
  ( (ValueCellFull!10321 (v!13411 V!33789)) (EmptyCell!10321) )
))
(declare-datatypes ((array!59285 0))(
  ( (array!59286 (arr!28507 (Array (_ BitVec 32) ValueCell!10321)) (size!28987 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59285)

(declare-datatypes ((array!59287 0))(
  ( (array!59288 (arr!28508 (Array (_ BitVec 32) (_ BitVec 64))) (size!28988 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59287)

(declare-fun minValue!1342 () V!33789)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33789)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14028 0))(
  ( (tuple2!14029 (_1!7024 (_ BitVec 64)) (_2!7024 V!33789)) )
))
(declare-datatypes ((List!19909 0))(
  ( (Nil!19906) (Cons!19905 (h!21067 tuple2!14028) (t!28280 List!19909)) )
))
(declare-datatypes ((ListLongMap!12739 0))(
  ( (ListLongMap!12740 (toList!6385 List!19909)) )
))
(declare-fun contains!5439 (ListLongMap!12739 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3570 (array!59287 array!59285 (_ BitVec 32) (_ BitVec 32) V!33789 V!33789 (_ BitVec 32) Int) ListLongMap!12739)

(assert (=> b!963672 (= res!645091 (contains!5439 (getCurrentListMap!3570 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28508 _keys!1686) i!803)))))

(declare-fun b!963673 () Bool)

(declare-fun e!543356 () Bool)

(declare-fun tp_is_empty!21605 () Bool)

(assert (=> b!963673 (= e!543356 tp_is_empty!21605)))

(declare-fun b!963674 () Bool)

(declare-fun e!543355 () Bool)

(declare-fun mapRes!34402 () Bool)

(assert (=> b!963674 (= e!543355 (and e!543356 mapRes!34402))))

(declare-fun condMapEmpty!34402 () Bool)

(declare-fun mapDefault!34402 () ValueCell!10321)

