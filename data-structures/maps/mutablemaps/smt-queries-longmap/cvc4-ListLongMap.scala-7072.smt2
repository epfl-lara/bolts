; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89526 () Bool)

(assert start!89526)

(declare-fun b!1026231 () Bool)

(declare-fun b_free!20489 () Bool)

(declare-fun b_next!20489 () Bool)

(assert (=> b!1026231 (= b_free!20489 (not b_next!20489))))

(declare-fun tp!72513 () Bool)

(declare-fun b_and!32753 () Bool)

(assert (=> b!1026231 (= tp!72513 b_and!32753)))

(declare-fun b!1026229 () Bool)

(declare-fun res!687068 () Bool)

(declare-fun e!578929 () Bool)

(assert (=> b!1026229 (=> (not res!687068) (not e!578929))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1026229 (= res!687068 (not (= key!909 (bvneg key!909))))))

(declare-fun res!687066 () Bool)

(assert (=> start!89526 (=> (not res!687066) (not e!578929))))

(declare-datatypes ((V!37151 0))(
  ( (V!37152 (val!12155 Int)) )
))
(declare-datatypes ((ValueCell!11401 0))(
  ( (ValueCellFull!11401 (v!14725 V!37151)) (EmptyCell!11401) )
))
(declare-datatypes ((array!64452 0))(
  ( (array!64453 (arr!31031 (Array (_ BitVec 32) (_ BitVec 64))) (size!31545 (_ BitVec 32))) )
))
(declare-datatypes ((array!64454 0))(
  ( (array!64455 (arr!31032 (Array (_ BitVec 32) ValueCell!11401)) (size!31546 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5396 0))(
  ( (LongMapFixedSize!5397 (defaultEntry!6050 Int) (mask!29735 (_ BitVec 32)) (extraKeys!5782 (_ BitVec 32)) (zeroValue!5886 V!37151) (minValue!5886 V!37151) (_size!2753 (_ BitVec 32)) (_keys!11194 array!64452) (_values!6073 array!64454) (_vacant!2753 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5396)

(declare-fun valid!2002 (LongMapFixedSize!5396) Bool)

(assert (=> start!89526 (= res!687066 (valid!2002 thiss!1427))))

(assert (=> start!89526 e!578929))

(declare-fun e!578931 () Bool)

(assert (=> start!89526 e!578931))

(assert (=> start!89526 true))

(declare-fun b!1026230 () Bool)

(declare-fun e!578932 () Bool)

(assert (=> b!1026230 (= e!578929 e!578932)))

(declare-fun res!687069 () Bool)

(assert (=> b!1026230 (=> (not res!687069) (not e!578932))))

(declare-datatypes ((SeekEntryResult!9631 0))(
  ( (MissingZero!9631 (index!40894 (_ BitVec 32))) (Found!9631 (index!40895 (_ BitVec 32))) (Intermediate!9631 (undefined!10443 Bool) (index!40896 (_ BitVec 32)) (x!91272 (_ BitVec 32))) (Undefined!9631) (MissingVacant!9631 (index!40897 (_ BitVec 32))) )
))
(declare-fun lt!451424 () SeekEntryResult!9631)

(assert (=> b!1026230 (= res!687069 (is-Found!9631 lt!451424))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64452 (_ BitVec 32)) SeekEntryResult!9631)

(assert (=> b!1026230 (= lt!451424 (seekEntry!0 key!909 (_keys!11194 thiss!1427) (mask!29735 thiss!1427)))))

(declare-fun mapIsEmpty!37742 () Bool)

(declare-fun mapRes!37742 () Bool)

(assert (=> mapIsEmpty!37742 mapRes!37742))

(declare-fun tp_is_empty!24209 () Bool)

(declare-fun e!578933 () Bool)

(declare-fun array_inv!23883 (array!64452) Bool)

(declare-fun array_inv!23884 (array!64454) Bool)

(assert (=> b!1026231 (= e!578931 (and tp!72513 tp_is_empty!24209 (array_inv!23883 (_keys!11194 thiss!1427)) (array_inv!23884 (_values!6073 thiss!1427)) e!578933))))

(declare-fun b!1026232 () Bool)

(declare-fun e!578936 () Bool)

(assert (=> b!1026232 (= e!578936 tp_is_empty!24209)))

(declare-fun b!1026233 () Bool)

(declare-fun e!578934 () Bool)

(assert (=> b!1026233 (= e!578934 tp_is_empty!24209)))

(declare-fun mapNonEmpty!37742 () Bool)

(declare-fun tp!72514 () Bool)

(assert (=> mapNonEmpty!37742 (= mapRes!37742 (and tp!72514 e!578936))))

(declare-fun mapKey!37742 () (_ BitVec 32))

(declare-fun mapValue!37742 () ValueCell!11401)

(declare-fun mapRest!37742 () (Array (_ BitVec 32) ValueCell!11401))

(assert (=> mapNonEmpty!37742 (= (arr!31032 (_values!6073 thiss!1427)) (store mapRest!37742 mapKey!37742 mapValue!37742))))

(declare-fun b!1026234 () Bool)

(assert (=> b!1026234 (= e!578933 (and e!578934 mapRes!37742))))

(declare-fun condMapEmpty!37742 () Bool)

(declare-fun mapDefault!37742 () ValueCell!11401)

