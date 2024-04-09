; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82890 () Bool)

(assert start!82890)

(declare-fun b_free!18989 () Bool)

(declare-fun b_next!18989 () Bool)

(assert (=> start!82890 (= b_free!18989 (not b_next!18989))))

(declare-fun tp!66096 () Bool)

(declare-fun b_and!30495 () Bool)

(assert (=> start!82890 (= tp!66096 b_and!30495)))

(declare-fun b!966527 () Bool)

(declare-fun res!647079 () Bool)

(declare-fun e!544876 () Bool)

(assert (=> b!966527 (=> (not res!647079) (not e!544876))))

(declare-datatypes ((array!59657 0))(
  ( (array!59658 (arr!28693 (Array (_ BitVec 32) (_ BitVec 64))) (size!29173 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59657)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966527 (= res!647079 (validKeyInArray!0 (select (arr!28693 _keys!1686) i!803)))))

(declare-fun b!966528 () Bool)

(declare-fun res!647078 () Bool)

(assert (=> b!966528 (=> (not res!647078) (not e!544876))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59657 (_ BitVec 32)) Bool)

(assert (=> b!966528 (= res!647078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapNonEmpty!34690 () Bool)

(declare-fun mapRes!34690 () Bool)

(declare-fun tp!66097 () Bool)

(declare-fun e!544877 () Bool)

(assert (=> mapNonEmpty!34690 (= mapRes!34690 (and tp!66097 e!544877))))

(declare-datatypes ((V!34045 0))(
  ( (V!34046 (val!10949 Int)) )
))
(declare-datatypes ((ValueCell!10417 0))(
  ( (ValueCellFull!10417 (v!13507 V!34045)) (EmptyCell!10417) )
))
(declare-fun mapRest!34690 () (Array (_ BitVec 32) ValueCell!10417))

(declare-datatypes ((array!59659 0))(
  ( (array!59660 (arr!28694 (Array (_ BitVec 32) ValueCell!10417)) (size!29174 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59659)

(declare-fun mapValue!34690 () ValueCell!10417)

(declare-fun mapKey!34690 () (_ BitVec 32))

(assert (=> mapNonEmpty!34690 (= (arr!28694 _values!1400) (store mapRest!34690 mapKey!34690 mapValue!34690))))

(declare-fun b!966529 () Bool)

(declare-fun res!647076 () Bool)

(assert (=> b!966529 (=> (not res!647076) (not e!544876))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(assert (=> b!966529 (= res!647076 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29173 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29173 _keys!1686))))))

(declare-fun b!966530 () Bool)

(assert (=> b!966530 (= e!544876 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34045)

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!431295 () Bool)

(declare-fun zeroValue!1342 () V!34045)

(declare-datatypes ((tuple2!14168 0))(
  ( (tuple2!14169 (_1!7094 (_ BitVec 64)) (_2!7094 V!34045)) )
))
(declare-datatypes ((List!20043 0))(
  ( (Nil!20040) (Cons!20039 (h!21201 tuple2!14168) (t!28414 List!20043)) )
))
(declare-datatypes ((ListLongMap!12879 0))(
  ( (ListLongMap!12880 (toList!6455 List!20043)) )
))
(declare-fun contains!5506 (ListLongMap!12879 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3640 (array!59657 array!59659 (_ BitVec 32) (_ BitVec 32) V!34045 V!34045 (_ BitVec 32) Int) ListLongMap!12879)

(assert (=> b!966530 (= lt!431295 (contains!5506 (getCurrentListMap!3640 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28693 _keys!1686) i!803)))))

(declare-fun b!966532 () Bool)

(declare-fun tp_is_empty!21797 () Bool)

(assert (=> b!966532 (= e!544877 tp_is_empty!21797)))

(declare-fun b!966533 () Bool)

(declare-fun res!647081 () Bool)

(assert (=> b!966533 (=> (not res!647081) (not e!544876))))

(assert (=> b!966533 (= res!647081 (and (= (size!29174 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29173 _keys!1686) (size!29174 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34690 () Bool)

(assert (=> mapIsEmpty!34690 mapRes!34690))

(declare-fun b!966534 () Bool)

(declare-fun res!647080 () Bool)

(assert (=> b!966534 (=> (not res!647080) (not e!544876))))

(declare-datatypes ((List!20044 0))(
  ( (Nil!20041) (Cons!20040 (h!21202 (_ BitVec 64)) (t!28415 List!20044)) )
))
(declare-fun arrayNoDuplicates!0 (array!59657 (_ BitVec 32) List!20044) Bool)

(assert (=> b!966534 (= res!647080 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20041))))

(declare-fun b!966535 () Bool)

(declare-fun e!544875 () Bool)

(declare-fun e!544879 () Bool)

(assert (=> b!966535 (= e!544875 (and e!544879 mapRes!34690))))

(declare-fun condMapEmpty!34690 () Bool)

(declare-fun mapDefault!34690 () ValueCell!10417)

