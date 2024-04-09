; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35764 () Bool)

(assert start!35764)

(declare-fun b!358989 () Bool)

(declare-fun e!219835 () Bool)

(declare-fun tp_is_empty!8209 () Bool)

(assert (=> b!358989 (= e!219835 tp_is_empty!8209)))

(declare-fun b!358990 () Bool)

(declare-fun e!219834 () Bool)

(assert (=> b!358990 (= e!219834 false)))

(declare-fun lt!166261 () Bool)

(declare-datatypes ((array!19939 0))(
  ( (array!19940 (arr!9460 (Array (_ BitVec 32) (_ BitVec 64))) (size!9812 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19939)

(declare-datatypes ((List!5480 0))(
  ( (Nil!5477) (Cons!5476 (h!6332 (_ BitVec 64)) (t!10638 List!5480)) )
))
(declare-fun arrayNoDuplicates!0 (array!19939 (_ BitVec 32) List!5480) Bool)

(assert (=> b!358990 (= lt!166261 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5477))))

(declare-fun b!358991 () Bool)

(declare-fun res!199612 () Bool)

(assert (=> b!358991 (=> (not res!199612) (not e!219834))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11923 0))(
  ( (V!11924 (val!4149 Int)) )
))
(declare-datatypes ((ValueCell!3761 0))(
  ( (ValueCellFull!3761 (v!6339 V!11923)) (EmptyCell!3761) )
))
(declare-datatypes ((array!19941 0))(
  ( (array!19942 (arr!9461 (Array (_ BitVec 32) ValueCell!3761)) (size!9813 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19941)

(assert (=> b!358991 (= res!199612 (and (= (size!9813 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9812 _keys!1456) (size!9813 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13821 () Bool)

(declare-fun mapRes!13821 () Bool)

(assert (=> mapIsEmpty!13821 mapRes!13821))

(declare-fun b!358993 () Bool)

(declare-fun e!219833 () Bool)

(assert (=> b!358993 (= e!219833 tp_is_empty!8209)))

(declare-fun b!358994 () Bool)

(declare-fun res!199610 () Bool)

(assert (=> b!358994 (=> (not res!199610) (not e!219834))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19939 (_ BitVec 32)) Bool)

(assert (=> b!358994 (= res!199610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun mapNonEmpty!13821 () Bool)

(declare-fun tp!27888 () Bool)

(assert (=> mapNonEmpty!13821 (= mapRes!13821 (and tp!27888 e!219833))))

(declare-fun mapValue!13821 () ValueCell!3761)

(declare-fun mapRest!13821 () (Array (_ BitVec 32) ValueCell!3761))

(declare-fun mapKey!13821 () (_ BitVec 32))

(assert (=> mapNonEmpty!13821 (= (arr!9461 _values!1208) (store mapRest!13821 mapKey!13821 mapValue!13821))))

(declare-fun res!199611 () Bool)

(assert (=> start!35764 (=> (not res!199611) (not e!219834))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35764 (= res!199611 (validMask!0 mask!1842))))

(assert (=> start!35764 e!219834))

(assert (=> start!35764 true))

(declare-fun e!219832 () Bool)

(declare-fun array_inv!6960 (array!19941) Bool)

(assert (=> start!35764 (and (array_inv!6960 _values!1208) e!219832)))

(declare-fun array_inv!6961 (array!19939) Bool)

(assert (=> start!35764 (array_inv!6961 _keys!1456)))

(declare-fun b!358992 () Bool)

(assert (=> b!358992 (= e!219832 (and e!219835 mapRes!13821))))

(declare-fun condMapEmpty!13821 () Bool)

(declare-fun mapDefault!13821 () ValueCell!3761)

