; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82632 () Bool)

(assert start!82632)

(declare-fun b_free!18737 () Bool)

(declare-fun b_next!18737 () Bool)

(assert (=> start!82632 (= b_free!18737 (not b_next!18737))))

(declare-fun tp!65331 () Bool)

(declare-fun b_and!30243 () Bool)

(assert (=> start!82632 (= tp!65331 b_and!30243)))

(declare-fun b!962585 () Bool)

(declare-fun res!644295 () Bool)

(declare-fun e!542860 () Bool)

(assert (=> b!962585 (=> (not res!644295) (not e!542860))))

(declare-datatypes ((array!59155 0))(
  ( (array!59156 (arr!28442 (Array (_ BitVec 32) (_ BitVec 64))) (size!28922 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59155)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59155 (_ BitVec 32)) Bool)

(assert (=> b!962585 (= res!644295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34303 () Bool)

(declare-fun mapRes!34303 () Bool)

(assert (=> mapIsEmpty!34303 mapRes!34303))

(declare-fun b!962586 () Bool)

(assert (=> b!962586 (= e!542860 false)))

(declare-fun lt!430854 () Bool)

(declare-datatypes ((V!33701 0))(
  ( (V!33702 (val!10820 Int)) )
))
(declare-datatypes ((ValueCell!10288 0))(
  ( (ValueCellFull!10288 (v!13378 V!33701)) (EmptyCell!10288) )
))
(declare-datatypes ((array!59157 0))(
  ( (array!59158 (arr!28443 (Array (_ BitVec 32) ValueCell!10288)) (size!28923 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59157)

(declare-fun minValue!1342 () V!33701)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33701)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13974 0))(
  ( (tuple2!13975 (_1!6997 (_ BitVec 64)) (_2!6997 V!33701)) )
))
(declare-datatypes ((List!19859 0))(
  ( (Nil!19856) (Cons!19855 (h!21017 tuple2!13974) (t!28230 List!19859)) )
))
(declare-datatypes ((ListLongMap!12685 0))(
  ( (ListLongMap!12686 (toList!6358 List!19859)) )
))
(declare-fun contains!5412 (ListLongMap!12685 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3543 (array!59155 array!59157 (_ BitVec 32) (_ BitVec 32) V!33701 V!33701 (_ BitVec 32) Int) ListLongMap!12685)

(assert (=> b!962586 (= lt!430854 (contains!5412 (getCurrentListMap!3543 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28442 _keys!1686) i!803)))))

(declare-fun res!644300 () Bool)

(assert (=> start!82632 (=> (not res!644300) (not e!542860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82632 (= res!644300 (validMask!0 mask!2110))))

(assert (=> start!82632 e!542860))

(assert (=> start!82632 true))

(declare-fun e!542861 () Bool)

(declare-fun array_inv!21959 (array!59157) Bool)

(assert (=> start!82632 (and (array_inv!21959 _values!1400) e!542861)))

(declare-fun array_inv!21960 (array!59155) Bool)

(assert (=> start!82632 (array_inv!21960 _keys!1686)))

(assert (=> start!82632 tp!65331))

(declare-fun tp_is_empty!21539 () Bool)

(assert (=> start!82632 tp_is_empty!21539))

(declare-fun mapNonEmpty!34303 () Bool)

(declare-fun tp!65332 () Bool)

(declare-fun e!542862 () Bool)

(assert (=> mapNonEmpty!34303 (= mapRes!34303 (and tp!65332 e!542862))))

(declare-fun mapKey!34303 () (_ BitVec 32))

(declare-fun mapValue!34303 () ValueCell!10288)

(declare-fun mapRest!34303 () (Array (_ BitVec 32) ValueCell!10288))

(assert (=> mapNonEmpty!34303 (= (arr!28443 _values!1400) (store mapRest!34303 mapKey!34303 mapValue!34303))))

(declare-fun b!962587 () Bool)

(declare-fun res!644297 () Bool)

(assert (=> b!962587 (=> (not res!644297) (not e!542860))))

(assert (=> b!962587 (= res!644297 (and (= (size!28923 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28922 _keys!1686) (size!28923 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962588 () Bool)

(declare-fun e!542859 () Bool)

(assert (=> b!962588 (= e!542861 (and e!542859 mapRes!34303))))

(declare-fun condMapEmpty!34303 () Bool)

(declare-fun mapDefault!34303 () ValueCell!10288)

