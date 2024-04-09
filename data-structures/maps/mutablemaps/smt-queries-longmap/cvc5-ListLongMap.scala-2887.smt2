; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41460 () Bool)

(assert start!41460)

(declare-fun b_free!11131 () Bool)

(declare-fun b_next!11131 () Bool)

(assert (=> start!41460 (= b_free!11131 (not b_next!11131))))

(declare-fun tp!39387 () Bool)

(declare-fun b_and!19485 () Bool)

(assert (=> start!41460 (= tp!39387 b_and!19485)))

(declare-fun mapIsEmpty!20512 () Bool)

(declare-fun mapRes!20512 () Bool)

(assert (=> mapIsEmpty!20512 mapRes!20512))

(declare-fun b!462954 () Bool)

(declare-fun res!276907 () Bool)

(declare-fun e!270274 () Bool)

(assert (=> b!462954 (=> (not res!276907) (not e!270274))))

(declare-datatypes ((array!28877 0))(
  ( (array!28878 (arr!13868 (Array (_ BitVec 32) (_ BitVec 64))) (size!14220 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28877)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28877 (_ BitVec 32)) Bool)

(assert (=> b!462954 (= res!276907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!462955 () Bool)

(assert (=> b!462955 (= e!270274 false)))

(declare-datatypes ((V!17851 0))(
  ( (V!17852 (val!6324 Int)) )
))
(declare-fun minValueBefore!38 () V!17851)

(declare-fun zeroValue!794 () V!17851)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5936 0))(
  ( (ValueCellFull!5936 (v!8607 V!17851)) (EmptyCell!5936) )
))
(declare-datatypes ((array!28879 0))(
  ( (array!28880 (arr!13869 (Array (_ BitVec 32) ValueCell!5936)) (size!14221 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28879)

(declare-datatypes ((tuple2!8254 0))(
  ( (tuple2!8255 (_1!4137 (_ BitVec 64)) (_2!4137 V!17851)) )
))
(declare-datatypes ((List!8382 0))(
  ( (Nil!8379) (Cons!8378 (h!9234 tuple2!8254) (t!14334 List!8382)) )
))
(declare-datatypes ((ListLongMap!7181 0))(
  ( (ListLongMap!7182 (toList!3606 List!8382)) )
))
(declare-fun lt!209274 () ListLongMap!7181)

(declare-fun getCurrentListMapNoExtraKeys!1774 (array!28877 array!28879 (_ BitVec 32) (_ BitVec 32) V!17851 V!17851 (_ BitVec 32) Int) ListLongMap!7181)

(assert (=> b!462955 (= lt!209274 (getCurrentListMapNoExtraKeys!1774 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462956 () Bool)

(declare-fun e!270273 () Bool)

(declare-fun e!270275 () Bool)

(assert (=> b!462956 (= e!270273 (and e!270275 mapRes!20512))))

(declare-fun condMapEmpty!20512 () Bool)

(declare-fun mapDefault!20512 () ValueCell!5936)

